class AddColorToProducts < ActiveRecord::Migration
  def change
    add_reference :colors, :product
    add_foreign_key :colors, :products, on_delete: :cascade
  end
end
