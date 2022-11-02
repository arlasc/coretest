class CreateVideoboards < ActiveRecord::Migration[7.0]
  def change
    create_table :videoboards do |t|
      t.string :product_name

      t.timestamps
    end
  end
end
