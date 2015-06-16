class CreateHome < ActiveRecord::Migration
  def change
    create_table :home do |t|
      t.timestamps null: false
    end

    Home.create_translation_table! title: :string, description: :text, keywords: :text
  end
end
