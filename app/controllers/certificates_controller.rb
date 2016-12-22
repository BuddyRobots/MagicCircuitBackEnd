class CertificatesController < ApplicationController

  def index
  end

  def test
  end

  def valid
    device = Device.find_or_create_by_code(params[:id])
    ret = device.valid(params[:product_code])
    render json: { valid: ret } and return
  end

  def reset
    product = Product.where(code: "12345").first
    if product.blank?
      render json: { success: false } and return
    end
    product.devices.destroy_all
    render json: { success: true } and return
  end

  def check
    device = Device.find_or_create_by_code(params[:id])
    render json: { check: device.product.present? } and return
  end
end