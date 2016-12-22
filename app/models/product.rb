class Product

  MAX_DEVICE_NUM = 3

  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String

  has_many :devices

  def self.create_product(number)
    
  end

  def reach_max_device_num
    return self.devices.length >= MAX_DEVICE_NUM
  end
end
