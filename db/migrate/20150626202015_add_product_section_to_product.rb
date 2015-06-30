class AddProductSectionToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :product_section
    add_foreign_key :products, :product_sections, on_delete: :cascade
  end
end
