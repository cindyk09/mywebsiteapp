class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :github
      t.string :weblink
      t.references :admin, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
