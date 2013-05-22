require "test/unit"
require_relative '../bootstrap_ar'

connect_to 'test'

ENV['FP_ENV'] = 'test'

module DatabaseCleaner
  def before_setup
    super
    Appointment.destroy_all
    Vendor.destroy_all
  end
end