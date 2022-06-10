class Student < ApplicationRecord
  include Rails.application.routes.url_helpers

  validates :first_name, :father_name, :phone_no, presence: true
  
  has_many :checkins
  
  
  def generate_qr(host = "")
    # write the logic for qr generation
   # binding.pry
    qrcode = RQRCode::QRCode.new(host + checkins_path(student_id: self.id))

      # NOTE: showing with default options specified explicitly
    png = qrcode.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: "black",
      file: nil,
      fill: "white",
      module_px_size: 6,
      resize_exactly_to: false,
      resize_gte_to: false,
      size: 200
    )
    file_path = "#{Rails.root}/tmp/qrcode.png"
    IO.binwrite(file_path, png.to_s)
    return file_path
  end
  
  def full_name
      [first_name, last_name].compact.join(' ')
  end
end