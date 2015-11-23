require 'test/unit'
require 'lib/Sorter'

class Test_Sorter < Test::Unit::TestCase
  def setup
    @sorter = Sorter.new
  end

  def test_emptyStack
    stack = []
    assert_equal(stack, @sorter.sort(stack), "sorting empty stack failed")
  end

  def test_StackWithOneElement
    stack = [1]
    assert_equal(stack, @sorter.sort(stack), "sorting stack with one element: 1 failed")
    stack = ["a"]
    assert_raise (ArgumentError) { @sorter.sort(stack) }
  end

  def test_StackWithTwoElements
    stack = [2, 1]
    sorted_stack = [1, 2]
    assert_equal(sorted_stack, @sorter.sort(stack), "sorting stack with two elements: 1, 2 failed")
    stack = [2, "a"]
    assert_raise (ArgumentError) { @sorter.sort(stack) }
  end

  def test_StackWithThreeElements
    stack = [2, 3, 1]
    sorted_stack = [1, 2, 3]
    assert_equal(sorted_stack, @sorter.sort(stack), "sorting stack with three elements: 1, 2, 3 failed")
  end

  def test_StackWithFourElements
    stack = [4, 2, 3, 1]
    sorted_stack = [1, 2, 3, 4]
    assert_equal(sorted_stack, @sorter.sort(stack), "sorting stack with four elements: 1, 2, 3, 4 failed")
  end

end
