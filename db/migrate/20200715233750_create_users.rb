class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.integer :age
      t.string :img
      t.string :from
      t.integer :country_id
      t.text :bio
      t.string :answer

      t.timestamps
    end
  end
end
