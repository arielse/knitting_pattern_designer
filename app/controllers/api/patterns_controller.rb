class Api::PatternsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update
    @pattern_rows = PatternRow.where(:pattern_id => params[:pattern_id]).order('id DESC')
    updated_grid = JSON.parse(params[:rows])

    for i in 0..9
      pattern_row = PatternRow.find(@pattern_rows[i].id)
      pattern_row.row = updated_grid[i]
      pattern_row.save
    end
  end
end
