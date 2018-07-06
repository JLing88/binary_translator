class BinaryTranslator

  attr_accessor :alpha_to_binary

  def initialize

    @alpha_to_binary = Hash.new("")
    @alpha_to_binary = {
      "a" => "000001",
      "b" => "000010",
      "c" => "000011",
      "d" => "000100",
      "e" => "000101",
      "f" => "000110",
      "g" => "000111",
      "h" => "001000",
      "i" => "001001",
      "j" => "001010",
      "k" => "001011",
      "l" => "001100",
      "m" => "001101",
      "n" => "001110",
      "o" => "001111",
      "p" => "010000",
      "q" => "010001",
      "r" => "010010",
      "s" => "010011",
      "t" => "010100",
      "u" => "010101",
      "v" => "010110",
      "w" => "010111",
      "x" => "011000",
      "y" => "011001",
      "z" => "011010",
      " " => "000000"
    }
  end

  def translate(string)
    char_array = string.chars
    char_array.map! do |char|
      @alpha_to_binary[char.downcase]
    end
    char_array.join
  end

  def translate_to_text(string)
    new_hash = @alpha_to_binary.invert
    new_array = string.scan(/.{6}/)
    new_array.map! do |binary|
      new_hash[binary]
    end
    new_array.join

  end
end
