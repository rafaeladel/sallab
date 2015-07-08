class CreatePageInfos < ActiveRecord::Migration
  def change
    create_table :page_infos do |t|
      t.integer :info_type, default: 0

      t.timestamps null: false
    end
    PageInfo.create_translation_table! general_title: :string, general_description: :text, general_keywords: :text
  end
end
