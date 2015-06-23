# This migration comes from seven_gallery (originally 20150329122050)
class CreateSevenGalleryGalleries < ActiveRecord::Migration
  def change
    create_table :seven_gallery_galleries do |t|
      t.timestamps null: false
    end
    SevenGallery::Gallery.create_translation_table! title: :string
  end
end
