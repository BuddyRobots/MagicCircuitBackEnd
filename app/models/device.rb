class Device

  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String
  field :device_type, type: String

  belongs_to :product

  def self.find_or_create_by_code(code)
    Device.where(code: code).first || Device.create(code: code)
  end

  def valid(product_code)
    product = Product.where(code: product_code).first
    if product.nil?
      return ErrCode::PRODUCT_NOT_EXIST
    end
    if product.reach_max_device_num
      return ErrCode::MAX_NUM_REACHED
    end
    product.devices << self
    return true
  end

end
