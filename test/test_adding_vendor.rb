require_relative 'test_helper'

class TestAddingVendor < Test::Unit::TestCase
  def test_01_takes_vendor_arguments_and_saves_them
    # start with no vendors
    assert_equal 0, Vendor.count
    # `ruby routepal add foo`
    vendor = Vendor.create( vendor_name: 'quality', password: 'password', vendor_location: '418 Estes St, Murfreesboro,TN')
    assert_equal 1, Vendor.count
  end

  def test_02_takes_vendor_arguments_and_uses_them
    puts `ruby routepal add quality`
    assert_equal 'quality', Vendor.last.vendor_name
  end
end