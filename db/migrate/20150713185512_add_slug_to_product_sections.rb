class AddSlugToProductSections < ActiveRecord::Migration
  def change
    add_column :product_sections, :slug, :string
  end
end
