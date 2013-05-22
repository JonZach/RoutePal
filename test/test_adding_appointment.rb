require_relative 'test_helper'

class TestAddingAppointment < Test::Unit::TestCase
  def test_01_takes_arguments_and_saves_them
    # start with no appointments
    assert_equal 0, Appointment.count
    # `ruby routepal add foo`
    appointment = Appointment.create( address: 'foo')
    # appointment => #<Appointment:12312 @address='foo'>
    # end up with a 'foo' appointment
    assert_equal 1, Appointment.count
  end

  def test_02_takes_arguments_and_uses_them
    puts `ruby routepal add foo`
    assert_equal 'foo', Appointment.last.address
  end
end