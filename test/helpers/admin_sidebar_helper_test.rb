require File.dirname(__FILE__) + '/../test_helper'

class AdminSidebarHelperTest < Test::Unit::TestCase

  include AdminSidebarHelper

  def test_default
    assert true
  end

  def test_build_my_list

    output = build_my_list([], header = nil)
    assert output.empty?

    output = build_my_list(['item1', 'item2'], "Chunky Bacon")
    assert !output.empty?
    assert_match /Chunky bacon/, output

    output = build_my_list(['item1', 'item2'])
    assert !output.empty?
    assert_no_match /h2/, output
    assert_no_match /\/h2/, output

  end

end