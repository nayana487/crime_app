class Comment < ActiveRecord::Base
  belongs_to :incident
  belongs_to :region
end
