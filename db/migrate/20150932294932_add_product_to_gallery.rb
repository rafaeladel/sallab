class AddProductToGallery < ActiveRecord::Migration
  def change
    add_reference :seven_gallery_galleries, :product
    add_foreign_key :seven_gallery_galleries, :products, on_delete: :cascade
  end
end
