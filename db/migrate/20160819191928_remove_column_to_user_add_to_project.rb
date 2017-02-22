class RemoveColumnToUserAddToProject < ActiveRecord::Migration
  def change
    remove_column :users, :software, :string
    add_column :projects, :software, :string
  end
end
