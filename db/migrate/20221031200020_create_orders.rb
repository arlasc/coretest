class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :name_order
      t.references :author, null: false, foreign_key: true
      t.references :processor, null: false, foreign_key: true
      t.references :mainboard, null: false, foreign_key: true
      t.references :memoryram, null: false, foreign_key: true
      t.references :videoboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
