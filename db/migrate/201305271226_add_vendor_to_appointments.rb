class AddVendorToAppointments < ActiveRecord::Migration
    def change
        add_column :appointments, :vendor_name, :string
    end
end