class AddDateToAppointments < ActiveRecord::Migration
    def change
        add_column :appointments, :appt_date, :datetime
    end
end