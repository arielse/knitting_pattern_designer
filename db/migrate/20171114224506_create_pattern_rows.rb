class CreatePatternRows < ActiveRecord::Migration[5.1]
  def change
    create_table :pattern_rows do |t|
      t.integer :pattern_id
      t.text :row, array: true, default: []
      t.boolean :row_complete, null: false, default: false

      t.timestamps
    end
  end
end
