require 'io/console'

module Home
    CLEAR = "\e[H\e[2J"
    def render_home
        logo = <<EOS

,------.  ,-----. ,--. ,--.,--------.,------.,------.   ,---.  ,--.    
|  .--. ''  .-.  '|  | |  |'--.  .--'|  .---'|  .--. ' /  O  ` |  |    
|  '--'.'|  | |  ||  | |  |   |  |   |  `--, |  '--' ||  .-.  ||  |    
|  |`  ` '  '-'  ''  '-'  '   |  |   |  `---.|  | --' |  | |  ||  '--. 
`--' '--' `-----'  `-----'    `--'   `------'`--'     `--' `--'`-----'
EOS

        menu = <<EOS
                      A Tool for GreenPal Vendors
                           by Zach Hendrix

            Want This?                            Type This
            ===============================================
            Home Screen:                           routepal
            Login:                                    login
            Add Appointment:                            add
            Add Vendor:                              signup
            List Appointments:                         list
            List Vendors:                           vendors
            Delete Appointment:   routepal remove <address>
            ===============================================

            Please type a command from above to get started.

EOS

        puts logo + menu
        input = gets.chomp.downcase

        if input == 'add'
          create
        elsif input == 'signup'
          new_vendor
        elsif input == 'list'
          index
        elsif input == 'vendors'
          list_vendors
        end
    end

    def create
      puts CLEAR
      #appointment = Appointment.new(params[:appointment])
      puts 'Please enter the address for the appointment.'
      input = gets.chomp
      puts 'Please enter appointment date in the form (mm.dd.yyyy).'
      input2 = gets.chomp
      #appointment.update_attributes( address: jobsite, appt_date: day_of_job )
      appointment = Appointment.create( address: input, appt_date: input2 )
      #appointment = Appointment.new(params[:appointment])
      if appointment.save
        puts "Success!"
      else
        puts "Failure :( #{appointment.errors.full_messages.join(", ")}"
      end
      return_to_home
    end

    def new_vendor
      puts CLEAR
      puts 'Please enter the vendor name you wish to go by.'
      input = gets.chomp.downcase
      puts CLEAR
      puts 'Please enter a password for your profile (lowercase only).'
      input2 = gets.chomp.downcase
      vendor = Vendor.create( vendor_name: input, password: input2 )
      puts CLEAR
      if vendor.save
        puts "Success!"
      else
        puts "Failure :( #{vendor.errors.full_messages.join(", ")}"
      end
      return_to_home
    end

    def index
      appointments = Appointment.all
      appointments.each_with_index do |appointment, i|
        puts "#{i+1}. #{appointment.address}"
      end
      return_to_home
    end

    def list_vendors
      all_vendors = Vendor.all
      all_vendors.each_with_index do |vendor, i|
        puts "#{i+1}. #{vendor.vendor_name}"
      end
      return_to_home
    end

    def return_to_home
      puts "\n" + 'Enter "routepal" to return to the home screen.'
      input = gets.chomp
      if input == 'routepal'
        render_home
      else
        return_to_home
      end
    end

end
