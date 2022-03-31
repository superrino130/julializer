require 'minitest/autorun'
require_relative '../lib/julializer'

class TestGets < Minitest::Test
  def setup; end

  def test_gets_to_i
    assert_equal Julializer.ruby2julia("n = gets.to_i"), "n=parse(Int64,readline());"
  end

  def test_gets_to_f
    assert_equal Julializer.ruby2julia("n = gets.to_f"), "n=parse(Float64,readline());"
  end

  def test_gets_chomp
    assert_equal Julializer.ruby2julia("n = gets.chomp"), "n=readline();"
  end

end