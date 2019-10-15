require "test_helper"

class NmaxTest < Minitest::Test
  def Nmax.input
    File.open('test/fixture.txt')
  end

  def test_that_it_has_a_version_number
    refute_nil ::Nmax::VERSION
  end

  def test_returns_array
    assert_equal(Nmax.run(5).class, Array)
  end

  def test_returns_nil_without_parameter
    assert_nil(Nmax.run(''))
  end

  def test_no_duplicates
    result = Nmax.run(30)
    assert_equal(result, result.uniq)
  end

  def test_only_numbers
    result = Nmax.run(30)
    assert(result.all? { |i| i.is_a? Integer })
  end
end
