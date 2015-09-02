class AddProjectToGallery < ActiveRecord::Migration
  def change
    add_reference :seven_gallery_galleries, :project
    add_foreign_key :seven_gallery_galleries, :projects, on_delete: :cascade
  end
end
