class CreateGeneralInfos < ActiveRecord::Migration
  def change
    create_table :general_infos do |t|
      t.string :contact_email
      t.string :facebook
      t.string :twitter
      t.string :google_plus
      t.string :instagram
      t.string :pinterest
      t.timestamps null: false
    end
  end
end
