class CreateAboutSections < ActiveRecord::Migration
  def change
    create_table :about_sections do |t|
      t.string :image

      t.timestamps null: false
    end
    AboutSection.create_translation_table! title: :string, content: :text

  end
end
