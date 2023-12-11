require "test_helper"
# rake db:migrate db:test:prepare
class LuckyNumberTest < ActiveSupport::TestCase
  @@test_numbers_count = 2000
  @@test_data = '{"0":"000000","1":"001001","2":"001010","3":"001100"}'

  test "should create" do
    lucky_number_new = LuckyNumber.new(numbers_count: @@test_numbers_count, data: @@test_data)
    assert_equal true, lucky_number_new.save
  end

  test "should find" do
    lucky_number_new = LuckyNumber.new(numbers_count: @@test_numbers_count, data: @@test_data)
    lucky_number_new.save
    lucky_number_find = LuckyNumber.find_by(numbers_count: @@test_numbers_count)
    assert_equal lucky_number_find.data, lucky_number_new.data
  end

  test "should not create with same numbers_count" do
    lucky_number_new = LuckyNumber.new(numbers_count: @@test_numbers_count, data: @@test_data)
    lucky_number_new.save
    lucky_number_new_same = LuckyNumber.new(numbers_count: @@test_numbers_count, data: @@test_data)
    assert_equal false, lucky_number_new_same.save
  end
end
