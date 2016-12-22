class ProductsController < ApplicationController

  def download_qrcode
    send_file(Product.create_product(params[:amount].to_i), filename: "qrcode.zip")
  end
end
