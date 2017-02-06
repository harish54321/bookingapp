class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :startdate
      t.string :enddate
      t.integer :phonenumber

      t.timestamps null: false
    end
  end
end
