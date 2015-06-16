# This migration comes from seven_contact (originally 20150421083010)
class AddFieldsToContactRecord < ActiveRecord::Migration
  def change
    add_column :seven_contact_contact_records, :email, :string
    add_column :seven_contact_contact_records, :name, :string
    add_column :seven_contact_contact_records, :content, :text
  end
end
