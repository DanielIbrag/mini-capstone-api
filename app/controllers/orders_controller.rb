class OrdersController < ApplicationController
  def create
    order = Order.new(
      user_id: params[:user_id],
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: params[:subtotal],
      tax: params[:tax],
      total: params[:total],
    )
    if order.save
      render json: order.as_json
    else
      render json: { error_messages: order.errors.full_messages }, status: 422
    end
  end

  def show
    single_route = Order.find_by(id: params["id"])
    render json: single_route.as_json
  end
  def index
    orders = Order.all
    render json: orders.as_json
  end
end
