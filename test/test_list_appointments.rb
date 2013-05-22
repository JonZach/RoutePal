require_relative 'test_helper'

class TestListAppointments < Test::Unit::TestCase
  include DatabaseCleaner

  def test_01_list_when_there_are_no_appointments
    assert Appointment.all.empty?
    actual = `ruby routepal list`
    assert_equal "", actual
  end

  def test_02_list_multiple_appointments
    Appointment.create(address: 'address 1')
    Appointment.create(address: 'address 2')
    actual = `ruby routepal list`
    expected = <<EOS
1. address 1
2. address 2
EOS
    assert_equal expected, actual
  end

end