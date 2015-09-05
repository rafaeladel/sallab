class CreateRelatedProducts < ActiveRecord::Migration
  def change
    create_table :related_products, id: false do |t|
      t.references :product, index: true
      t.references :related_product, index: true
    end
  end
end
