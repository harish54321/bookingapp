class RemoveEndDateFromAppointments < ActiveRecord::Migration
  def change
  	remove_column :appointments, :endtime, :time
  end
end
