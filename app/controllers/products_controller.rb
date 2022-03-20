class ProductsController < ApplicationController
  def index
    products = Product.all
    render json: products
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      description: params["description"],
    )
    if product.save
      render json: product
    else
      render json: { error_messages: product.errors.full_messages }, status: 422
    end
  end

  def show
    single_route = Product.find_by(id: params["id"])
    render json: single_route
  end

  def patch
    product_id = params["id"]
    product = Product.find(product_id)
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    if product.save
      render json: product
    else
      render json: { error_messages: product.errors.full_messages }, status: 422
    end
  end

  def destroy
    id = params[:id]
    product = Product.find_by(id: id)
    product.destroy

    render json: { message: "Product successfully destroyed!" }
  end
end
