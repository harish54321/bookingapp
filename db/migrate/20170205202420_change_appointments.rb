class ChangeAppointments < ActiveRecord::Migration
  def change
  	remove_column :appointments, :startdate, :string
  	add_column :appointments, :date, :string
  end
end
