class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.column :description, :string
      t.column :example, :string

      t.timestamps
    end
  end
end
