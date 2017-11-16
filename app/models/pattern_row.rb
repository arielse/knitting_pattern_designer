class PatternRow < ApplicationRecord
  belongs_to :pattern

  default_scope { order('id DESC') }
end
