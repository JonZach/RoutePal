require_relative 'test_helper'

class TestListVendors < Test::Unit::TestCase
  include DatabaseCleaner

  def test_01_list_when_there_are_no_vendors
    assert Vendor.all.empty?
    actual = `ruby routepal vendors`
    assert_equal "", actual
  end

  def test_02_list_multiple_vendors
    Vendor.create(vendor_name: 'a')
    Vendor.create(vendor_name: 'b')
    actual = `ruby routepal vendors`
    expected = <<EOS
1. a
2. b
EOS
    assert_equal expected, actual
  end

end