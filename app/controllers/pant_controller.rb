class PantController < ApplicationController
  def index
    @Pant = Pant.all
    render json: @Pant.as_json
  end

  def show
    @Pants = Pant.find_by(id: 3)
    render json:@Pants
  end

  def create
    @Pants = Pant.create(
      name: params[:name],
      size: params[:size],
      length: params[:length],
      waist: params[:waist]
    )
    @Pants.save
  end

  def destroy
    @Pant = Pant.find_by(id: params[:id])
    @Pant.destroy
    render json: {message: "pant has been deleted"}
  end
end
