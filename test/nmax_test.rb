require "test_helper"

class NmaxTest < Minitest::Test
  def Nmax.input
    File.open('test/fixture.txt')
  end

  def test_that_it_has_a_version_number
    refute_nil ::Nmax::VERSION
  end

  def test_that_it_works
    assert_equal(Nmax.run(5).class, Array)
  end
end
