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
  def to_binary(symbol_table)
    val = value(symbol_table)
    "0#{val.to_s(2).rjust(15, "0")}"
  end

  def value(symbol_table)
    without_at = raw.gsub("@", "")
    begin
      Integer(without_at)
    rescue ArgumentError
      val = symbol_table.get(without_at)
      if val.nil?
        symbol_table.add_variable(without_at)
      else
        val
      end
    end
  end
end

class Instruction < Command
  JUMP_MAP = {
    "" => "000",
    "JGT" => "001",
    "JEQ" => "010",
    "JGE" => "011",
    "JLT" => "100",
    "JNE" => "101",
    "JLE" => "110",
    "JMP" => "111"
  }

  COMP_MAP = {
    "0" => "0101010",
    "1" => "0111111",
    "-1" => "0111010",
    "D" => "0001100",
    "A" => "0110000",
    "!D" => "0001101",
    "!A" => "0110001",
    "-D" => "0001111",
    "-A" => "0110011",
    "D+1" => "0011111",
    "A+1" => "0110111",
    "D-1" => "0001110",
    "A-1" => "0110010",
    "D+A" => "0000010",
    "D-A" => "0010011",
    "A-D" => "0000111",
    "D&A" => "0000000",
    "D|A" => "0010101",
    "M" => "1110000",
    "!M" => "1110001",
    "-M" => "1110011",
    "M+1" => "1110111",
    "M-1" => "1110010",
    "D+M" => "1000010",
    "D-M" => "1010011",
    "M-D" => "1000111",
    "D&M" => "1000000",
    "D|M" => "1010101"
  }

  def to_binary(symbol_table)
    "111#{comp_binary}#{dest_binary}#{jump_binary}"
  end

  def dest_str
    if raw.include?("=")
      raw.split("=")[0]
    else
      ""
    end
  end

  def dest_binary
    d1 = (dest_str.include?("A") ? "1" : "0")
    d2 = (dest_str.include?("D") ? "1" : "0")
    d3 = (dest_str.include?("M") ? "1" : "0")
    "#{d1}#{d2}#{d3}"
  end

  def jump_str
    if raw.include?(";")
      raw.split(";")[1]
    else
      ""
    end
  end

  def jump_binary
    JUMP_MAP[jump_str]
  end

  def comp_str
    raw.gsub(/[^=]*=/, "").gsub(/;.*/, "")
  end

  def comp_binary
    COMP_MAP[comp_str]
  end
end

class Sym < Command
  attr_accessor :index

  def symbol
    @symbol ||= raw.gsub(/[()]/, "")
  end
end

class SymbolTable
  attr_reader :symbols

  def initialize
    @i = 15
    @symbols = {}
    symbols["SP"] = 0
    symbols["LCL"] = 1
    symbols["ARG"] = 2
    symbols["THIS"] = 3
    symbols["THAT"] = 4
    symbols["SCREEN"] = 16384
    symbols["KBD"] = 24576
    (0..15).each do |i|
      symbols["R#{i}"] = i
    end
  end

  def add(sym)
    symbols[sym.symbol] = sym.index
  end

  def add_variable(symbol)
    symbols[symbol] = (@i += 1)
  end

  def get(symbol)
    symbols[symbol]
  end
end

class Parser
  attr_reader :raw_lines, :symbol_table

  def initialize(raw_lines)
    @raw_lines = raw_lines
    @symbol_table = SymbolTable.new

    symbols.each do |symbol|
      symbol_table.add(symbol)
    end
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

  def symbols
    @symbols ||= parsed_lines.select { |line| line.is_a?(Sym) }
  end

  def not_symbols
    @not_symbols ||= parsed_lines.delete_if { |line| line.is_a?(Sym) }
  end

  def to_binary
    not_symbols.map { |x| x.to_binary(symbol_table) }.join("\n")
  end

  def parse
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

puts parser.to_binary
