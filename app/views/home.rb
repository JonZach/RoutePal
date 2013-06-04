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
            Add Appointment:                            add
            Create New Vendor:                       signup
            List Appointments:                         list
            List Vendors:                           vendors
            Delete Appointment:                      remove
            Exit RoutePal:                               :q
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
        elsif input == 'remove'
          destroy
        end
    end

    def create
      puts CLEAR
      puts "Please enter your vendor name to add a new appointment."
      vendor = gets.chomp.downcase
      puts "Enter your password"
      password = gets.chomp.downcase
      puts 'Please enter the address for the appointment.'
      input = gets.chomp
      puts 'Please enter appointment date in the form (mm.dd.yyyy).'
      input2 = gets.chomp
      appointment = Appointment.create( address: input, appt_date: input2, vendor_name: vendor )
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
      puts 'Please enter a password for your profile (lowercase only).'
      input2 = gets.chomp.downcase
      puts 'Please enter your business address.'
      starting_location = gets.chomp.downcase
      vendor = Vendor.create( vendor_name: input, password: input2, vendor_location: starting_location )
      puts CLEAR
      if vendor.save
        puts "Success!\nYou're vendor name is #{input}.\n You're password is #{input2}."
      else
        puts "Failure :( #{vendor.errors.full_messages.join(", ")}"
      end
      return_to_home
    end

    def index
      puts "Please enter your vendor name to see your appointments."
      input = gets.chomp.downcase
      puts "Enter your password"
      password = gets.chomp.downcase
      puts CLEAR
      puts "Welcome #{input}.\nTo see your appointments by date enter date (mm.dd.yyyy) else enter 'all'."
      filter = gets.chomp.downcase
      if filter == 'all'
        appointments = Appointment.where(vendor_name: input)
        if appointments.empty?
          puts "You have no appointments scheduled."
        else
          appointments.each_with_index do |appointment, i|
            puts "#{i+1}. #{appointment.address}" + "\n ""  #{appointment.appt_date}"
          end
        end
      else 
        appointments = Appointment.where(appt_date: filter)
        if appointments.empty?
          puts "You have no appointments on this date."
        else
          appointments.each_with_index do |appointment, i|
            puts "#{i+1}. #{appointment.address}" + "\n ""  #{appointment.appt_date}"
          end
        end
      end
      return_to_home
    end

    def list_vendors
      all_vendors = Vendor.all
      all_vendors.each_with_index do |vendor, i|
        puts "#{i+1}. #{vendor.vendor_name}" + " #{vendor.password}"
      end
      return_to_home
    end

    def destroy
      puts CLEAR
      puts 'Please enter the appointment address you wish to delete.'
      input = gets.chomp.downcase
      matching_appointment = Appointment.where(address: input).first
      matching_appointment.destroy
      if matching_appointment.save
        puts "Your appointment has been deleted successfully.\nWould you like to delete another appointment? (y/n)"
        input2 = gets.chomp.downcase
        if input2 == 'y'
          destroy
        else
          render_home
        end
      else
        puts "Failure :( #{vendor.errors.full_messages.join(", ")}"
      end
    end

    def return_to_home
      puts "\nEnter 'routepal' to return to the home screen."
      input = gets.chomp
      if input == 'routepal'
        render_home
      else
        return_to_home
      end
    end

end
