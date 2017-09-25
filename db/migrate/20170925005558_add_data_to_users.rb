class AddDataToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :about, :string
    add_column :users, :ratings, :decimal
  end
end
