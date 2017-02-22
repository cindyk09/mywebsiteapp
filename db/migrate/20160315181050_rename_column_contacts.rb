class RenameColumnContacts < ActiveRecord::Migration
  def change
    rename_column :contacts, :body, :message
    change_column :contacts, :message, :text
  end
end
