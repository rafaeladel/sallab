class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :phone
      t.references :region, index: true
      t.string :lat
      t.string :long

      t.timestamps null: false
    end

    add_foreign_key :branches, :regions, on_delete: :cascade

    Branch.create_translation_table! address: :text

  end
end
