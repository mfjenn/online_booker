class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
