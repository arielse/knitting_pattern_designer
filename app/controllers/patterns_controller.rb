class PatternsController < ApplicationController

  def index
    @patterns = Pattern.all
  end

  def new
  end

  def create
    pattern = Pattern.new
    pattern.name = params[:name]
    pattern.description = params[:description]
    pattern.user_id = current_user.id
    pattern.save
    counter = 0
    while  counter < 10
      pattern_row = PatternRow.new
      pattern_row.row = ['', '', '', '', '', '', '', '', '', '']
      pattern_row.pattern_id = pattern.id
      pattern_row.save
      counter += 1
    end
    redirect_to "/patterns/#{pattern.id}"
  end

  def show
    @pattern = Pattern.find(params[:id])
    @pattern_rows = assemble_rows
  end

  def edit
    @pattern = Pattern.find(params[:id])
    @pattern_rows = assemble_rows
    @rows_arr = []
    @pattern_rows.each do |row_arr|
       @rows_arr.push(row_arr.row)
    end
  end
end
