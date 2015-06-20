class CreateTileSizes < ActiveRecord::Migration
  def change
    create_table :tile_sizes do |t|
      t.integer :height
      t.integer :width

      t.timestamps null: false
    end
  end
end
