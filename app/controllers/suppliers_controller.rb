class SuppliersController < ApplicationController
  

  def index
    products = Supplier.all
    render json: products
  end

  def create
    supplier = Supplier.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    if supplier.save
      render json: supplier
    else
      render json: { error_messages: supplier.errors.full_messages }, status: 422
    end
  end

  def show
    single_route = Supplier.find_by(id: params["id"])
    render json: single_route
  end

  def patch
    supplier_id = params["id"]
    supplier = Supplier.find(supplier_id)
    supplier.name = params["name"] || supplier.name
    supplier.price = params["price"] || supplier.price
    supplier.image_url = params["image_url"] || supplier.image_url
    supplier.description = params["description"] || supplier.description
    if supplier.save
      render json: supplier
    else
      render json: { error_messages: supplier.errors.full_messages }, status: 422
    end
  end
end
