gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'date'

class ShiftDateTest < Minitest::Test
  def test_shift_left_on_date
    date = Date.new(2013, 11, 2)
    assert_equal " 2 Nov, 2013", date.strftime('%e %b, %Y')

    date1 = date << 1
    date2 = date << 2
    date3 = date << 3
    date4 = date << 4

    assert_equal " 2 Oct, 2013", date1.strftime('%e %b, %Y')
    assert_equal " 2 Sep, 2013", date2.strftime('%e %b, %Y')
    assert_equal " 2 Aug, 2013", date3.strftime('%e %b, %Y')
    assert_equal " 2 Jul, 2013", date4.strftime('%e %b, %Y')
  end

  def test_shift_right_on_date
    date = Date.new(2013, 10, 31)
    assert_equal "31 Oct, 2013", date.strftime('%e %b, %Y')

    date1 = date << 1
    date2 = date << 2
    date3 = date << 3
    date4 = date << 4

    assert_equal "30 Sep, 2013", date1.strftime('%e %b, %Y')
    assert_equal "31 Aug, 2013", date2.strftime('%e %b, %Y')
    assert_equal "31 Jul, 2013", date3.strftime('%e %b, %Y')
    assert_equal "30 Jun, 2013", date4.strftime('%e %b, %Y')

    date1 = date >> 1
    date2 = date >> 2
    date3 = date >> 3
    date4 = date >> 4

    assert_equal "30 Nov, 2013", date1.strftime('%e %b, %Y')
    assert_equal "31 Dec, 2013", date2.strftime('%e %b, %Y')
    assert_equal "31 Jan, 2014", date3.strftime('%e %b, %Y')
    assert_equal "28 Feb, 2014", date4.strftime('%e %b, %Y')
  end

  # Explain in English what `<<` and `>>` do to a date.
end
