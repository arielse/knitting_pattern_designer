class RemovePatternFromPatterns < ActiveRecord::Migration[5.1]
  def change
    remove_column :patterns, :pattern, :text
  end
end
