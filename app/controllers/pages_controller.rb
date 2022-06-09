

class PagesController < ApplicationController
  # binding.pry
  def qr_code_generator; end

  def qr_code_download
    # binding.pry
    qrcode = RQRCode::QRCode.new(params[:content].to_s)
     send_data RQRCode::QRCode.new(params[:content].to_s), type: 'image/png', :disposition => 'inline', :filename => 'hello.png'
  
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
    # binding.pry
    IO.binwrite("#{Rails.root}/tmp/qrcode.png", png.to_s)
  end
end
