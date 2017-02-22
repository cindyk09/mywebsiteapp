class RenameAdminsTableAndAddAdminBoolean < ActiveRecord::Migration
  def change
    rename_table :admins, :users
    add_column :users, :admin, :boolean, default: false
  end
end
