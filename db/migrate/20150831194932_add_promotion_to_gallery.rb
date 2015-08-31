class AddPromotionToGallery < ActiveRecord::Migration
  def change
    add_reference :seven_gallery_galleries, :promotion
    add_foreign_key :seven_gallery_galleries, :promotions, on_delete: :cascade
  end
end
