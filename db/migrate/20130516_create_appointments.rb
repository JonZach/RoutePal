class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :address
    end
  end
end