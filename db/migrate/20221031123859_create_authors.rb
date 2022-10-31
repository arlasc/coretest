class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.text :bio
      t.integer :favorite_number
      t.time :aweka
      t.date :birthday

      t.timestamps
    end
  end
end
