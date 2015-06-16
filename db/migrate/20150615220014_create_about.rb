class CreateAbout  < ActiveRecord::Migration
  def change
    create_table :about do |t|
      t.timestamps null: false
    end

    About.create_translation_table! title: :string, description: :text, keywords: :text
  end
end
