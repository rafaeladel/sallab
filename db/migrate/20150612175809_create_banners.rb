class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
    	t.string :image
    	t.integer :banner_type, null: false
      t.timestamps null: false
    end

    # add_foreign_key :banners, :seven_gallery_galleries, index: true, on_delete: :cascade

    Banner.create_translation_table! slogan1: :string, slogan2: :string
  end
end
