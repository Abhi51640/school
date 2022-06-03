

	class PagesController < ApplicationController
# binding.pry
  def qr_code_generator; end
  def qr_code_download
    send_data RQRCode::QRCode.new(params[:content].to_s).as_svg(size: 300), type: 'image/png', disposition: 'inline'
  end
end
