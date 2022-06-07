class Student < ApplicationRecord

  validates :first_name, :father_name, :phone_no, presence: true
  belongs_to :section

  def generate_qr
    # write the logic for qr generation
  end
end
