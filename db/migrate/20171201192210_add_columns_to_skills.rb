class AddColumnsToSkills < ActiveRecord::Migration[5.1]
  def change
    add_column :skills, :description, :string
    add_column :skills, :example, :string
  end
end
