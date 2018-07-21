gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'


class ScopeTest < MiniTest::Test

  def test_change_variable_in_method
    x = 1

    def change_x(x)
      x = 2
    end

    assert_equal 1, x
  end

  def test_change_variable_in_loop
    x = 0
    while x < 16
      x +=1
    end
    assert_equal 16, x
  end

  def test_change_different_in_method
    x = 3
    def change_x(x)
      x = 2
    end
    y = 1
    change_x(y)
    assert_equal 1, y
  end

  def test_variable_scope_inside_method
    x = 1
    def change_x(x)
      assert_equal 3, x
      x = 2
      assert_equal 2, x
    end
    y = 3
    change_x(y)
    assert_equal 1, x
    assert_equal 3, y
  end

  def test_change_different_variable_inside_method
    a = 1
    def change_x(x)
      x = 2
      a = 4
      assert_equal 4, a
    end

    change_x(a)
    assert_equal 1, a
  end

  def test_variable_and_method_names_are_the_same
    a = 1
    b = 2
    def change_x(x)
      assert_equal 2, x
      x *= 2
      a = b
      assert_equal 23, a
    end

    def b
      23
    end

    change_x(b)
    assert_equal 2, b
    assert_equal 1, a
  end

  def test_block_variable
    [1].each do |i|
      assert_equal 1, i
    end
  end

  def test_scope_inside_block
    i = 2
    [1,1,1].each do |i|
      assert_equal 1, i
    end
    assert_equal 2, i
  end

  def test_changing_variable_inside_block
    i = 3
    [1,2,3,4].each do |i|
      i += 1
    end
    assert_equal 3, i
  end

  def test_scope_of_variables_outside_block
    x = 0
    i = 0
    [1, 2, 3, 4, 5].each do |i|
      x = i
    end

    assert_equal 5, x
    assert_equal 0, i
  end

  def test_scope_of_method_inside_block
    def x
      20
    end

    [1,2,3,4,5].each do |i|
      assert_equal 20, x
    end
    assert_equal 20, x
  end

  def test_scope_of_local_variable_and_method_inside_block
    def x
      20
    end

    [1,2,3,4,5].each do |i|
      x = 10
      assert_equal 10, x
    end
    assert_equal 20, x
  end

  def test_change_variable_in_block
    x = 20

    [1,2,3,4,5].each do |i|
      x = 10
      assert_equal 10, x
    end

    assert_equal 10, x
  end

  def test_everything_is_x
    x = 20
    def x
      10
    end
    sum = 0
    [1,2,3,4,5].each do |x|
      x = 1
      assert_equal 1, x
      sum += x
    end

    assert_equal 5, sum
    assert_equal 20, x
  end

end

