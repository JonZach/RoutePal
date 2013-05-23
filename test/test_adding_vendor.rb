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
    puts `ruby routepal signup quality`
    assert_equal 'quality', Vendor.last.vendor_name
  end
  
  def test_03_create_muliple_vendors
    # vendor = Vendor.create( vendor_name: 'lsi')
    # vendor = Vendor.create( vendor_name: 'green')
    # vendor = Vendor.create( vendor_name: 'chip')
    puts `ruby routepal signup chip`
    puts `ruby routepal signup green`
    puts `ruby routepal signup lsi`
    #count is 4 because test_helper only deletes before it runs test file, NOT each test..Not 5 b/c no dupes
    assert_equal 4, Vendor.count
  end

  # def test_03_takes_multiple_vendor_arguments_and_uses_them
  #   puts `ruby routepal add quality`
  #   assert_equal 'quality', Vendor.last.vendor_name
  # end
end