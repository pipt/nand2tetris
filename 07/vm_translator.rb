require "securerandom"

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

class Command
  attr_reader :raw

  def initialize(raw)
    @raw = raw
  end

  def self.for(line)
    if line.start_with?("push")
      Push.for(line)
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
      Neg
    elsif line == "not"
      Not
    else
      new(line)
    end
  end

  def to_asm
    "NOT IMPLEMENTED"
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
  def self.for(line)
    _, sub_command, arg = line.split(" ")
    if sub_command == "constant"
      PushConstant.new(arg)
    else
      new(line)
    end
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

class Neg
  def self.to_asm
    <<~eos
      // neg
      @SP
      A=M
      A=A-1
      M=-M
      // end neg
    eos
  end
end

class Not
  def self.to_asm
    <<~eos
      // not
      @SP
      A=M
      A=A-1
      M=!M
      // end not
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
  attr_reader :raw_lines

  def initialize(raw_lines)
    @raw_lines = raw_lines
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
    lines.map { |line| Command.for(line) }
  end

  def to_asm
    ([Preamble] + parsed_lines).map(&:to_asm).map(&:chomp).join("\n")
  end
end

parser = Parser.new(ARGF.readlines)

require "pp"
#pp parser.parsed_lines
puts parser.to_asm
