class CreateHome < ActiveRecord::Migration
  def change
    create_table :home do |t|
      t.timestamps null: false
    end
  end
end
