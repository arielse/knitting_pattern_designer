class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.integer :pattern_id
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
