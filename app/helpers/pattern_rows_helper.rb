module PatternRowsHelper
  def assemble_rows
    pattern = Pattern.find(params[:id])
    @pattern_rows = PatternRow.where(:pattern_id => pattern.id).order('id DESC')
    return @pattern_rows
  end
end
