require 'test_helper'

class GroupTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup

  end

  test "is group valid" do
    assert @group.valid?
  end

  test "is group not valid" do

    assert_not @group2.valid?
  end
end
