class CreateMainboards < ActiveRecord::Migration[7.0]
  def change
    create_table :mainboards do |t|
      t.string :product_name
      t.string :processors_suported
      t.integer :qtd_slots_ram
      t.integer :max_memory_ram
      t.boolean :video_board

      t.timestamps
    end
  end
end
