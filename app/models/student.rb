class Student < ApplicationRecord

  validates :first_name, :father_name, :phone_no, presence: true
  
  belongs_to :section
  belongs_to :checkin
  
  def generate_qr
    # write the logic for qr generation
    self.id
    self.first_name
    self.last_name
    # qrcode = RQRCode::QRCode.new(params[:content].to_s)
    # qrcode = RQRCodeCore::QRCode.new("http://localhost:3000/checkin")
      qrcode = RQRCode::QRCode.new([{ data: id.to_s, mode: :byte_8bit }, { data: first_name, mode: :byte_8bit },
       { data: last_name, mode: :byte_8bit}])

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
