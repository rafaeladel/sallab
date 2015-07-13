class AddSlugToAboutSections < ActiveRecord::Migration
  def change
    add_column :about_sections, :slug, :string
  end
end
