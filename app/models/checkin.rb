class Checkin < ApplicationRecord
 
  belongs_to :student
  # belongs_to :section , through: :student

end
