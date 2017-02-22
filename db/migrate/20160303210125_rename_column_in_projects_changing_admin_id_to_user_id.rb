class RenameColumnInProjectsChangingAdminIdToUserId < ActiveRecord::Migration
  def change
    rename_column :projects, :admin_id, :user_id
  end
end
