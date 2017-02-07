class ChangeDateFieldToDate < ActiveRecord::Migration
  def change
  	change_table :appointments do |t|
  		t.change :date, :date
  	end
  end
end
