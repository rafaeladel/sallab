class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.timestamps null: false
    end
    Brand.create_translation_table! title: :string
  end
end
