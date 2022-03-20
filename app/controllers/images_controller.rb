class ImagesController < ApplicationController
  def index
    images = Image.all
    render json: images
  end

  def create
    image = Image.new(
      url: params["url"],
    )
    if image.save
      render json: image
    else
      render json: { error_messages: image.errors.full_messages }, status: 422
    end
  end

  def show
    single_route = Image.find_by(id: params["id"])
    render json: single_route
  end

  def patch
    image_id = params["id"]
    image = Image.find(image_id)
    image.url = params["url"] || image.url
    if image.save
      render json: image
    else
      render json: { error_messages: image.errors.full_messages }, status: 422
    end
  end

  def destroy
    id = params[:id]
    image = Image.find_by(id: id)
    image.destroy

    render json: { message: "image successfully destroyed!" }
  end
end
