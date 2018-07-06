require "minitest/autorun"
require "minitest/pride"
require "./lib/binary_translator"

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

  def test_translate_gives_correct_output_for_single_UPCASE_chars
    bt = BinaryTranslator.new
    actual = bt.translate("A")
    expected = "000001"
    assert_equal expected, actual

    actual = bt.translate("B")
    expected = "000010"
    assert_equal expected, actual

  end

  def test_translate_gives_correct_output_for_multiple_UPCASE_chars
    bt = BinaryTranslator.new
    actual = bt.translate("TURING")
    expected = "010100010101010010001001001110000111"
    assert_equal expected, actual

  end

  def test_if_spaces_are_translated_correctly
    bt = BinaryTranslator.new
    actual = bt.translate("a b")
    expected = "000001000000000010"
    assert_equal expected, actual
  end

  def test_translate_skips_symbols
    bt = BinaryTranslator.new
    actual = bt.translate("a*&^b")
    expected = "000001000010"
    assert_equal expected, actual
  end

  def test_binary_to_text
    bt = BinaryTranslator.new
    actual = bt.translate_to_text("001000000101001100001100001111000000010111001111010010001100000100")
    expected = "hello world"
    assert_equal expected, actual
  end


end
