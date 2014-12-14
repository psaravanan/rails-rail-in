require 'minitest/autorun'
require 'rails-rail-in'

class RailInTest < Minitest::Test
  def test_base_url
    assert_equal "http://api.erail.in/",
      RailIn.new.base_url
  end
end