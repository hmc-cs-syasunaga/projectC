class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.integer :user_id
      t.integer :busines_id
      t.time :start_time
      t.time :end_time
      t.date :date

      t.timestamps
    end
  end
end
