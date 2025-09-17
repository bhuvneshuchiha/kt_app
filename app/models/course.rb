class Course < ApplicationRecord
  belongs_to :instructor, class_name: "User"
  has_many :lessons, dependent: :destroy
end
