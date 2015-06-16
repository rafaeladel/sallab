class AddGalleryToBanner < ActiveRecord::Migration
  def change
  	add_reference :seven_gallery_galleries, :banner, foreign_key: true, index: true, on_delete: :cascade
  end
end
