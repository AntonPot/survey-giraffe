class Survey < ActiveRecord::Base
  has_many :questions
  belongs_to :user
  has_many :responses
  has_many :users, through: :responses

end
