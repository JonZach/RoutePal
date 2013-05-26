class AppointmentController

  CLEAR = '\e[H\e[2J'

  def initialize params
    @params = params
  end

  def index
    appointments = Appointment.all
    appointments.each_with_index do |appointment, i|
      puts "#{i+1}. #{appointment.address}"
    end
  end

  def create
    #puts CLEAR
    appointment = Appointment.new(params[:appointment])
    # puts 'Please enter the address for the appointment.'
    # jobsite = gets.chomp
    # puts 'Please enter appointment date in the form (mm.dd.yyyy).'
    # day_of_job = gets.chomp
    #appointment.update_attributes( address: jobsite, appt_date: day_of_job )
    #appointment = Appointment.create( address: jobsite, appt_date: day_of_job )
    #appointment = Appointment.new(params[:appointment])
    if appointment.save
      puts "Success!"
    else
      puts "Failure :( #{appointment.errors.full_messages.join(", ")}"
    end
  end

  def destroy
    matching_appointments = Appointment.where(address: params[:appointment][:address]).all
    matching_appointments.each do |appointment|
      appointment.destroy
    end
  end

  def new_vendor
    vendor = Vendor.new(params[:vendor])
    if vendor.save
      puts "Success!"
    else
      puts "Failure :( #{vendor.errors.full_messages.join(", ")}"
    end
  end

  def list_vendors
    all_vendors = Vendor.all
    all_vendors.each_with_index do |vendor, i|
      puts "#{i+1}. #{vendor.vendor_name}"
    end
  end

  private

  def params
    @params
  end
end