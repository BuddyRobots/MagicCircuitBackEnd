class CertificatesController < ApplicationController

  def index
  end

  def test
  end

  def valid
    device = Device.find_or_create_by_code(params[:id])
    ret = device.valid(params[:produce_code])
    render json: { valid: ret } and return
  end

  def check
    device = Device.find_or_create_by_code(params[:id])
    render json: { valid: device.product.present? } and return
  end
end