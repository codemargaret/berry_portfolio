class AddColumnsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :title, :string
    add_column :projects, :description, :string
    add_column :projects, :link, :string
  end
end
