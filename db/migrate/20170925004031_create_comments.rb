class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :business_id
      t.integer :user_id
      t.string :content
      t.integer :rating
      t.boolean :from_user_bool
      t.integer :appointment_id

      t.timestamps
    end
  end
end
