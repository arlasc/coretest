class CreateMemoryrams < ActiveRecord::Migration[7.0]
  def change
    create_table :memoryrams do |t|
      t.string :product_name
      t.integer :memory_size

      t.timestamps
    end
  end
end
