class CreateEndorsements < ActiveRecord::Migration[5.1]
  def change
    create_table :endorsements do |t|
      t.column :user_id, :integer
      t.column :skill_id, :integer
      t.column :body, :string

      t.timestamps
    end
  end
end
