class AddIsImportedToProducts < ActiveRecord::Migration
  def change
    add_column :products, :is_imported, :boolean, default: false
  end
end
