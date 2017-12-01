class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.column :title, :string
      t.column :description, :string
      t.column :link, :string

      t.timestamps
    end
  end
end
