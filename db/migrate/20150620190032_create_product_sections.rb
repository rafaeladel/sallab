class CreateProductSections < ActiveRecord::Migration
  def change
    create_table :product_sections do |t|
      t.timestamps null: false
    end
    ProductSection.create_translation_table! title: :string
  end
end
