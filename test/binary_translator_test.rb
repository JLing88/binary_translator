require "minitest/autorun"
require "minitest/pride"
require "./lib/binary_translator"

class BinaryTranslatorTest < Minitest::Test

  def test_it_exists
    bt = BinaryTranslator.new
    assert_instance_of BinaryTranslator, bt
  end

  def test_translate_gives_correct_output
    bt = BinaryTranslator.new
    actual = bt.translate("a")
    expected = "000001"

    assert_equal expected, actual

  end


end
