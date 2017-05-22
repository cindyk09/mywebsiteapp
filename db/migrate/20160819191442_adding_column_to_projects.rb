class AddingColumnToProjects < ActiveRecord::Migration
  def change
    add_column :users, :software, :string
  end
end
