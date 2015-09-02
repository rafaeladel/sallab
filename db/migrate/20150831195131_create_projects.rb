class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :item_type, default: 0
      t.boolean :is_featured, default: false
      t.timestamps null: false
    end
    Project.create_translation_table! title: :string, description: :text

  end
end
