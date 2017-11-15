class Pattern < ApplicationRecord
  belongs_to :user
  has_many :projects
  has_many :pattern_rows
end
