class CreatePatterns < ActiveRecord::Migration[5.1]
  def change
    create_table :patterns do |t|
      t.integer :user_id
      t.text :pattern, array: true, default: []
      t.string :name
      t.text :description
      t.text :status

      t.timestamps
    end
  end
end
