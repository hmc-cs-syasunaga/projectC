class CreateUserInfos < ActiveRecord::Migration[5.1]
  def change
    create_table :user_infos do |t|
      t.string :name
      t.integer :user_id
      t.string :about
      t.integer :age
      t.string :school
      t.decimal :ratings

      t.timestamps
    end
  end
end
