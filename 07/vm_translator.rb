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
    elsif line == "add"
      Add
    elsif line == "eq"
      Eq
    else
      new(line)
    end
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

class Add
  def self.to_asm
    <<~eos
      // add
      #{POP_M}
      D=M // Put first arg in D
      #{POP_M}
      D=D+M // Add second arg to D
      #{PUSH_D}
      // end add
    eos
  end
end

class Eq
  def self.to_asm
    <<~eos
      // eq
      #{POP_M}
      D=M
      #{POP_M}
      D=M-D
      @SP
      A=M
      M=0

      @SP
      M=M+1
      // end eq
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