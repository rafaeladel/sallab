class AddGalleryToBanner < ActiveRecord::Migration
  def change
  	add_reference :seven_gallery_galleries, :banner, index: true
    add_foreign_key :seven_gallery_galleries, :banners, on_delete: :cascade
  end
end
