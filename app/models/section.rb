class Section < ApplicationRecord

  has_many :students
  has_many :checkins, through: :students
end
