class User < ActiveRecord::Base
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true
  has_many :incidents, dependent: :destroy
  has_many :comments, dependent: :destroy
end
