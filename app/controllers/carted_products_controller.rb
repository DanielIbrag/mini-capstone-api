class CartedProductsController < ApplicationController
  def create
    carted_products = CartedProduct.new(
      user_id: current_user.id,
      product_id: params["product_id"],
      quantity: params["quantity"],
      status: "carted",
      order_id: nil,
    )
    if carted_products.save
      render json: carted_products.as_json
    else
      render json: { error_messages: carted_products.errors.full_messages }, status: 422
    end
  end

  def index
    carted_products = current_user.carted_products
    render json = carted_products.as_json
  end
end
