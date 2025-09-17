class Lesson < ApplicationRecord
  belongs_to :course
  has_one :quiz, dependent: :destory
  has_many :progresses, dependent: :destroy
end
