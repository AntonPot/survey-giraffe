class AnsweredQuestion < ActiveRecord::Base
  belongs_to :response
  belongs_to :answer
  has_many :questions, through: :answers
end
