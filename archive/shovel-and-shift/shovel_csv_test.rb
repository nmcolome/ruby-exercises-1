gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require 'csv'

class ShovelCSVTest < Minitest::Test
  def test_shovel_on_csv
    row = CSV::Row.new(["name", "age"], ["Alice", 23])

    row << ["profession", "astronomer"]
    assert_equal "Alice,23,astronomer\n", row.to_csv
    assert_equal {"name" => "Alice", "age" => 23, "profession" => "astronomer"}, row.to_hash

    row << {phone: "(123) 123-1234", salary: "USD 98,000"}
    assert_equal "Alice,23,astronomer,(123) 123-1234,USD 98,000\n", row.to_csv
    assert_equal {name: "Alice", age: 23, profession: "astronomer", phone: "(123) 123-1234", salary: "USD 98,000"}, row.to_hash

    # Explain in English what `<<` does to a csv row.
  end
end
