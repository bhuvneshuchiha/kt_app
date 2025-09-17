class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise(
    :database_authenticatable,
    :registerable,
    :recoverable,
    :rememberable,
    :validatable
  )

  enum role: {student => 0, instructor => 1, admin => 2}
  after_initialize do
    self.role ||= student if new_record?
  end

  has_many :courses, foreign_key: :instructor_id
  has_many :progresses

end
