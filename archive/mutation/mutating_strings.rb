# encoding: utf-8
gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'

class MutatingStringTest < Minitest::Test
  def test_strip_1
    s1 = "   \n  \tto the    moon\n\n\t    "
    s2 = s1.strip
    refute s1.object_id == s2.object_id
    assert_equal "   \n  \tto the    moon\n\n\t    ", s1
    assert_equal "to the    moon", s2
  end

  def test_strip_2
    s1 = "   \n  \tto the    moon\n\n\t    "
    s2 = s1.strip!
    assert s1.object_id == s2.object_id
    assert_equal "to the    moon", s1
    assert_equal "to the    moon", s2
  end

  def test_capitalize_1
    s1 = "alice"
    s2 = s1.capitalize
    refute s1.object_id == s2.object_id
    assert_equal "alice", s1
    assert_equal "Alice", s2
  end

  def test_capitalize_2
    s1 = "alice"
    s2 = s1.capitalize!
    assert s1.object_id == s2.object_id
    assert_equal "Alice", s1
    assert_equal "Alice", s2
  end

  def test_upcase_1
    s1 = "run!"
    s2 = s1.upcase
    refute s1.object_id == s2.object_id
    assert_equal "run!", s1
    assert_equal "RUN!", s2
  end

  def test_upcase_2
    s1 = "run!"
    s2 = s1.upcase!
    assert s1.object_id == s2.object_id
    assert_equal "RUN!", s1
    assert_equal "RUN!", s2
  end

  def test_downcase_1
    s1 = "I'M OVER HERE"
    s2 = s1.downcase
    refute s1.object_id == s2.object_id
    assert_equal "I'M OVER HERE", s1
    assert_equal "i'm over here", s2
  end

  def test_downcase_2
    s1 = "I'M OVER HERE"
    s2 = s1.downcase!
    assert s1.object_id == s2.object_id
    assert_equal "i'm over here", s1
    assert_equal "i'm over here", s2
  end

  def test_chop_1
    s1 = "hello!"
    s2 = s1.chop
    refute s1.object_id == s2.object_id
    assert_equal "hello!", s1
    assert_equal "hello", s2
  end

  def test_chop_2
    s1 = "hello!"
    s2 = s1.chop!
    assert s1.object_id == s2.object_id
    assert_equal "hello", s1
    assert_equal "hello", s2
  end

  def test_chomp_1
    s1 = "hello\n"
    s2 = s1.chomp
    refute s1.object_id == s2.object_id
    assert_equal "hello\n", s1
    assert_equal "hello", s2
  end

  def test_chomp_2
    s1 = "hello\n"
    s2 = s1.chomp!
    assert s1.object_id == s2.object_id
    assert_equal "hello", s1
    assert_equal "hello", s2
  end

  def test_delete_1
    s1 = "eeny, meeny, miny, moe"
    s2 = s1.delete('e')
    refute s1.object_id == s2.object_id
    assert_equal "eeny, meeny, miny, moe", s1
    assert_equal "ny, mny, miny, mo", s2
  end

  def test_delete_2
    s1 = "eeny, meeny, miny, moe"
    s2 = s1.delete!('e')
    assert s1.object_id == s2.object_id
    assert_equal "ny, mny, miny, mo", s1
    assert_equal "ny, mny, miny, mo", s2
  end

  def test_reverse_1
    s1 = "woolly mammoth"
    s2 = s1.reverse
    refute s1.object_id == s2.object_id
    assert_equal "woolly mammoth", s1
    assert_equal "htommam ylloow", s2
  end

  def test_reverse_2
    s1 = "woolly mammoth"
    s2 = s1.reverse!
    assert s1.object_id == s2.object_id
    assert_equal "htommam ylloow", s1
    assert_equal "htommam ylloow", s2
  end

  def test_squeeze_1
    s1 = "Sunny summer days playing hoops on the roof"
    s2 = s1.squeeze
    refute s1.object_id == s2.object_id
    assert_equal "Sunny summer days playing hoops on the roof", s1
    assert_equal "Suny sumer days playing hops on the rof", s2
  end

  def test_squeeze_2
    s1 = "Sunny summer days playing hoops on the roof"
    s2 = s1.squeeze!
    assert s1.object_id == s2.object_id
    assert_equal "Suny sumer days playing hops on the rof", s1
    assert_equal "Suny sumer days playing hops on the rof", s2
  end

  def test_shovel
    s1 = ""
    s2 = s1 << "abc"
    assert s1.object_id == s2.object_id
    assert_equal "abc", s1
    assert_equal "abc", s2
  end

  def test_concat
    s1 = ""
    s2 = s1.concat("abc")
    assert s1.object_id == s2.object_id
    assert_equal "abc", s1
    assert_equal "abc", s2
  end

  def test_plus
    s1 = ""
    s2 = s1 + "abc"
    refute s1.object_id == s2.object_id
    assert_equal "", s1
    assert_equal "abc", s2
  end

  def test_sub_1
    s1 = "kicking"
    s2 = s1.sub('k', 't')
    refute s1.object_id == s2.object_id
    assert_equal "kicking", s1
    assert_equal "ticking", s2
  end

  def test_sub_2
    s1 = "kicking"
    s2 = s1.sub!('k', 't')
    assert s1.object_id == s2.object_id
    assert_equal "ticking", s1
    assert_equal "ticking", s2
  end

  def test_gsub_1
    s1 = "kicking"
    s2 = s1.gsub('k', 't')
    refute s1.object_id == s2.object_id
    assert_equal "kicking", s1
    assert_equal "ticting", s2
  end

  def test_gsub_2
    s1 = "kicking"
    s2 = s1.gsub!('k', 't')
    assert s1.object_id == s2.object_id
    assert_equal "ticting", s1
    assert_equal "ticting", s2
  end

  def test_square_bracket_equal
    s1 = "cut"
    assert_equal "cut", s1

    s2 = s1[-1] = "p"
    s3 = s1[1] = "p"

    assert_equal "p", s2
    assert_equal "p", s3
    assert_equal "cpp", s1
  end
end

