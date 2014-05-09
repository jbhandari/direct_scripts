require 'rqrcode'
require 'mini_magick'
require 'rqrcode/export/svg'

class Qrcode
  attr_reader :link

  def initialize(link)
    @link = link
  end

  def to_s
    link.to_s
  end

  def process
    RQRCode::QRCode.new(to_s).as_svg
  end

end
