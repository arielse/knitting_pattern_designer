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
    redirect_to '/patterns'
  end

  def show
    @pattern = Pattern.find(params[:id])
    @pattern_rows = assemble_rows
  end
end
