class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.timestamps null: false
    end
    Origin.create_translation_table! title: :string
  end
end
