class CreateAbout  < ActiveRecord::Migration
  def change
    create_table :about do |t|
      t.timestamps null: false
    end
  end
end
