require "securerandom"
require "pathname"

POP_M = "// Pop to M register
@SP
M=M-1
A=M"

PUSH_D = "// Push D register
@SP
A=M
M=D
@SP
M=M+1"

class Global
  class << self
    attr_accessor :function
  end
end

class Command
  attr_reader :raw

  def initialize(raw)
    @raw = raw
  end

  def self.for(line, filename)
    if line.start_with?("push")
      Push.for(line, filename)
    elsif line.start_with?("pop")
      Pop.for(line, filename)
    elsif %w[eq lt gt].include?(line)
      Compare.new(line)
    elsif line == "sub"
      BinaryOp.new("-")
    elsif line == "add"
      BinaryOp.new("+")
    elsif line == "and"
      BinaryOp.new("&")
    elsif line == "or"
      BinaryOp.new("|")
    elsif line == "neg"
      UnaryOp.new("-")
    elsif line == "not"
      UnaryOp.new("!")
    elsif line.start_with?("label")
      Label.new(line)
    elsif line.start_with?("goto")
      Goto.new(line)
    elsif line.start_with?("if-goto")
      IfGoto.new(line)
    else
      new(line)
    end
  end

  def to_asm
    "NOT IMPLEMENTED"
  end
end

class WithLabel
  attr_reader :label

  def initialize(line)
    _, label = line.split(" ")
    @label = "#{Global.function}$#{label}"
  end
end

class Label < WithLabel
  def to_asm
    <<~eos
      (#{label})
    eos
  end
end

class Goto < WithLabel
  def to_asm
    <<~eos
      @#{label}
      0;JMP
    eos
  end
end

class IfGoto < WithLabel
  def to_asm
    <<~eos
      #{POP_M}
      D=M
      @#{label}
      D;JNE
    eos
  end
end

class Preamble
  def self.to_asm
    <<~eos
      @256
      D=A
      @SP
      M=D
    eos
  end
end

class Push < Command
  def self.for(line, filename)
    _, sub_command, arg = line.split(" ")
    if sub_command == "constant"
      PushConstant.new(arg)
    elsif sub_command == "local"
      PushWithBaseAndOffset.new("LCL", arg)
    elsif sub_command == "argument"
      PushWithBaseAndOffset.new("ARG", arg)
    elsif sub_command == "this"
      PushWithBaseAndOffset.new("THIS", arg)
    elsif sub_command == "that"
      PushWithBaseAndOffset.new("THAT", arg)
    elsif sub_command == "pointer"
      PushDirect.new(3 + arg.to_i)
    elsif sub_command == "temp"
      PushDirect.new(5 + arg.to_i)
    elsif sub_command == "static"
      PushDirect.new("#{filename}.#{arg}")
    else
      new(line)
    end
  end
end

class Pop < Command
  def self.for(line, filename)
    _, sub_command, arg = line.split(" ")
    if sub_command == "local"
      PopWithBaseAndOffset.new("LCL", arg)
    elsif sub_command == "argument"
      PopWithBaseAndOffset.new("ARG", arg)
    elsif sub_command == "this"
      PopWithBaseAndOffset.new("THIS", arg)
    elsif sub_command == "that"
      PopWithBaseAndOffset.new("THAT", arg)
    elsif sub_command == "pointer"
      PopDirect.new(3 + arg.to_i)
    elsif sub_command == "temp"
      PopDirect.new(5 + arg.to_i)
    elsif sub_command == "static"
      PopDirect.new("#{filename}.#{arg}")
    else
      new(line)
    end
  end
end

class PopDirect
  attr_reader :offset

  def initialize(offset)
    @offset = offset
  end

  def to_asm
    <<~eos
      // pop offset #{offset}
      @#{offset}
      D=A
      @R13
      M=D
      #{POP_M}
      D=M
      @R13
      A=M
      M=D
      // end pop offset #{offset}
    eos
  end
end

class PushDirect
  attr_reader :offset

  def initialize(offset)
    @offset = offset
  end

  def to_asm
    <<~eos
      // push offset #{offset}
      @#{offset}
      D=M
      #{PUSH_D}
      // end push offset #{offset}
    eos
  end
end

class PopWithBaseAndOffset
  attr_reader :base, :offset

  def initialize(base, offset)
    @base = base
    @offset = offset
  end

  def to_asm
    <<~eos
      // pop segment #{base}
      @#{offset}
      D=A
      @#{base}
      A=M
      D=A+D
      @R13
      M=D
      #{POP_M}
      D=M
      @R13
      A=M
      M=D
      // end pop segment #{base}
    eos
  end
end

class PushWithBaseAndOffset
  attr_reader :base, :offset

  def initialize(base, offset)
    @base = base
    @offset = offset
  end

  def to_asm
    <<~eos
      // push segment #{base}
      @#{offset}
      D=A
      @#{base}
      A=M
      A=A+D
      D=M
      #{PUSH_D}
      // end push segment #{base}
    eos
  end
end

class PushConstant
  attr_reader :constant

  def initialize(constant)
    @constant = constant
  end

  def to_asm
    <<~eos
      // push constant #{constant}
      @#{constant}
      D=A
      #{PUSH_D}
      // end push constant #{constant}
    eos
  end
end

class OpWithOperator
  attr_reader :operator

  def initialize(operator)
    @operator = operator
  end
end

class BinaryOp < OpWithOperator
  def to_asm
    <<~eos
      // #{operator}
      #{POP_M}
      D=M
      #{POP_M}
      D=M#{operator}D
      #{PUSH_D}
      // end #{operator}
    eos
  end
end

class UnaryOp < OpWithOperator
  def to_asm
    <<~eos
      // #{operator}
      @SP
      A=M
      A=A-1
      M=#{operator}M
      // end #{operator}
    eos
  end
end

class Compare < OpWithOperator
  def to_asm
    random_label = SecureRandom.hex
    <<~eos
      // #{operator}
      #{POP_M}
      D=M
      #{POP_M}
      D=M-D
      // Set top of stack to -1 (true)
      @SP
      A=M
      M=-1
      @#{random_label}
      D;J#{operator.upcase}
      @SP
      A=M
      M=0
      (#{random_label})
      // Increment SP
      @SP
      M=M+1
      // end #{operator}
    eos
  end
end

class Parser
  attr_reader :raw_lines, :path

  def initialize(path)
    @path = Pathname.new(path)
    @raw_lines = @path.readlines
  end

  def lines
    raw_lines
      .map(&:strip)
      .delete_if(&:empty?)
      .delete_if { |line| line.start_with?("//") }
      .map { |line| line.gsub(/\/\/.*\z/, "") }
      .map(&:strip)
  end

  def parsed_lines
    @parsed_lines ||= parse
  end


  def parse
    lines.map { |line| Command.for(line, path.basename) }
  end

  def to_asm
    ([Preamble] + parsed_lines).map(&:to_asm).map(&:chomp).join("\n")
  end
end

parsers = ARGV.map { |path| Parser.new(path) }

puts parsers.map(&:to_asm).join("\n")
