class Section < ApplicationRecord

	has_many :students
	belongs_to :checkin
end
