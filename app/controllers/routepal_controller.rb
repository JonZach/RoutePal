class RoutePalController
  #include Formatter

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
    appointment = Appointment.new(params[:appointment])
    if appointment.save
      puts "Success!"
    else
      puts "Failure :( #{appointment.errors.full_messages.join(", ")}"
    end
  end

  def destroy
    matching_appointments = Appointment.where(address: params[:appointment][:address]).all
    matching_appointmentss.each do |appointment|
      appointment.destroy
    end
  end


  private

  def params
    @params
  end
end