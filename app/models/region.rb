class Region < ActiveRecord::Base
  has_many :incidents, dependent: :destroy
  has_many :comments, dependent: :destroy
end
