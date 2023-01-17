class PantController < ApplicationController
  def index
    @Pant = Pant.all
    render json: @Pant.as_json
  end

  def show
    @Pants = Pant.find_by(id: params[:id])
    render json:@Pants
  end

  def create
    @Pants = Pant.create(
      name: params[:name],
      size: params[:size],
      length: params[:length],
      waist: params[:waist],
      style: params[:style],
      image: params[:image]
    )
    @Pants.save
  end

  def destroy
    @Pant = Pant.find_by(id: params[:id])
    @Pant.destroy
    render json: {message: "pant has been deleted"}
  end

  def update
    pant = Pant.find_by(id: params[:id])
    pant.update(
      name: params[:name] || pant.name,
      size: params[:size] || pant.size,
      length: params[:length] || pant.length,
      waist: params[:waist] || pant.waist,
      style: params[:style] || pant.style,
      image: params[:image] || pant.image
    )
    render json: pant.as_json
  end
end
