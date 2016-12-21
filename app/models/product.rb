class Product

  include Mongoid::Document
  include Mongoid::Timestamps

  field :code, type: String

  has_many :devices

  def self.create_product(number)
    
  end
end
