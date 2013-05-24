require_relative 'test_helper'

class TestAddingAppointment < Test::Unit::TestCase
  def test_01_takes_arguments_and_saves_them
    # start with no appointments
    assert_equal 0, Appointment.count
    # `ruby routepal add foo`
    appointment = Appointment.create( address: 'bar', appt_date: '06.15.2013')
    # appointment => #<Appointment:12312 @address='foo'>
    # end up with a 'foo' appointment
    assert_equal 1, Appointment.count
  end

  def test_02_creating_new_appointment_with_controller
    puts `ruby routepal add`
    jobsite = '418'
    day_of_job = '05.24.2013'
    assert_equal '418', Appointment.last.address
  end

  def test_03_takes_arguments_and_uses_them
    puts `ruby routepal add foo`
    assert_equal 'foo', Appointment.last.address
  end

  def test_04_takes_multiple_arguments_and_uses_them
    puts `ruby routepal add foo 06.15.2013`
    assert_equal '06.15.2013', Appointment.last.appt_date
  end
end