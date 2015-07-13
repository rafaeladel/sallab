class AddImageToProductSection < ActiveRecord::Migration
  def change
    add_column :product_sections, :image, :string
  end
end
