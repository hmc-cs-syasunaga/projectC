class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.integer :user_id
      t.string :name
      t.string :location
      t.string :category
      t.decimal :ratings
      t.integer :price

      t.timestamps
    end
  end
end
