class Api::PatternRowsController < ApplicationController
  def update
    @pattern_rows = PatternRow.where(:pattern_id => pattern.id).order('id DESC')
    updated_grid = JSON.parse(params[:rows])

    for i in 0..9
      pattern_row = PatternRow.find(@pattern_rows[i].id)
      pattern_row.row = updated_grid[i]
      pattern_row.save
    end
  end
end
