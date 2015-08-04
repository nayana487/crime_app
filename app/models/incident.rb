class Incident < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  belongs_to :region
end
