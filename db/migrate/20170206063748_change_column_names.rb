class ChangeColumnNames < ActiveRecord::Migration
  def change
  	change_table :appointments do |t|
  		t.change :starttime, :string
  		t.change :phonenumber, :string
  	end
  end
end
