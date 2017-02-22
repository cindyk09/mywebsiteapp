class AddColumnTagsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :tags, :string
  end
end
