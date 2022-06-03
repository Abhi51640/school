class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


      validates :first_name,:email, presence: true
     
       # has_many :section
       # has_many :student, :through => :section
end
