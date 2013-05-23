class ChangeDateTypeForAppointments < ActiveRecord::Migration
    def change
        change_column :appointments, :appt_date, :string
    end
end