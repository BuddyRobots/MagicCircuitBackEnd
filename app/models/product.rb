require 'zip'
class Product

  MAX_DEVICE_NUM = 3

  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String

  has_many :devices

  def self.create_product(number)
    folder = "public/qrcodes/"
    png_files = (0...number).to_a.map do |n|
      code = SecureRandom.uuid.to_s
      Product.create(code: code)

      qrcode = RQRCode::QRCode.new(code)
      png = qrcode.as_png(
        resize_gte_to: false,
        resize_exactly_to: false,
        fill: 'white',
        color: 'black',
        size: 300,
        border_modules: 4,
        module_px_size: 6,
        file: folder + code + ".png"
      )
      code + ".png"
    end

    zipfile_name = folder + "products.zip"

    Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
      png_files.each do |filename|
        zipfile.add(filename, folder + filename)
      end
    end
    zipfile_name
  end

  def reach_max_device_num
    return self.devices.length >= MAX_DEVICE_NUM
  end
end
