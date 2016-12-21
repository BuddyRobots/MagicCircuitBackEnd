# encoding: utf-8
module ErrCode

  PRODUCT_NOT_EXIST = -1
  MAX_NUM_REACHED = -2

  def self.message(code)
    case code
    when PRODUCT_NOT_EXIST
      "错误的二维码"
    when MAX_NUM_REACHED
      "产品已达到最大激活数量"
    else
      nil
    end
  end
end
