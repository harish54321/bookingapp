class RemoveFromAppointments < ActiveRecord::Migration
  def change
  	remove_column :appointments, :enddate, :string
  end
end
