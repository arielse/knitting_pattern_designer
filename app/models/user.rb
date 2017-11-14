class User < ApplicationRecord
  has_secure_password
  has_many :patterns
  has_many :projects
end
