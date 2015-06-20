class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.references :origin
      t.references :brand
      t.references :tile_size
      t.string :color
      t.string :code
      t.string :image

      t.timestamps null: false
    end
    Product.create_translation_table! description: :text
  end
end
