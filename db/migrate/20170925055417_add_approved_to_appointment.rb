class AddApprovedToAppointment < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :approved, :boolean
  end
end
