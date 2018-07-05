require "minitest/autorun"
require "minitest/pride"
require "./lib/binary_translator"
require "pry"

class BinaryTranslatorTest < Minitest::Test

  def test_it_exists
    bt = BinaryTranslator.new
    assert_instance_of BinaryTranslator, bt
  end

  def test_translate_gives_correct_output_for_single_chars
    bt = BinaryTranslator.new
    actual = bt.translate("a")
    expected = "000001"
    assert_equal expected, actual

    actual = bt.translate("b")
    expected = "000010"
    assert_equal expected, actual
  end

  def test_translate_gives_correct_output_for_multiple_chars
    bt = BinaryTranslator.new
    actual = bt.translate("turing")
    expected = "010100010101010010001001001110000111"
    assert_equal expected, actual

  end


end
