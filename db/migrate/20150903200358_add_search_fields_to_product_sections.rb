class AddSearchFieldsToProductSections < ActiveRecord::Migration
  def change
    add_column :product_sections, :search_fields, :text
  end
end
