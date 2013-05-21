require 'test_helper'

class TestAddingProject < MiniTest::Unit::TestCase
  include DatabaseCleaner

  def test_takes_arguments_and_saves_them
    assert_equal 0, User.count
    puts `ruby futureperfect add foo`
    assert_equal 1, User.count
  end

  def test_takes_arguments_and_uses_them
    puts `ruby futureperfect add foo`
    assert_equal 'foo', User.last.name
  end
end
