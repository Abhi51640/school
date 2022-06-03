class Student < ApplicationRecord
   
   validates :first_name, :father_name, :phone_no, presence: true
   
   has_many :section
end
