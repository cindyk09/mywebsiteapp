class RenameColumnInProjects < ActiveRecord::Migration
  def change
    rename_column :projects, :weblink, :projecturl
  end
end
