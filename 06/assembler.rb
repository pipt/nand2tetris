class Command
  attr_reader :raw

  def initialize(raw)
    @raw = raw
  end

  def self.for(line)
    if line.start_with?("@")
      Address.new(line)
    elsif line.start_with?("(")
      Sym.new(line)
    else
      Instruction.new(line)
    end
  end
end

class Address < Command
end

class Instruction < Command
end

class Sym < Command
  attr_accessor :index
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
    parsed = []
    index = 0
    lines.each do |line|
      command = Command.for(line)
      if command.is_a?(Sym)
        command.index = index
      else
        index += 1
      end
      parsed.push(command)
    end
    parsed
  end
end

parser = Parser.new(ARGF.readlines)

require "pp"
pp parser.parsed_lines
