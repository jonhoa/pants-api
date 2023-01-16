class PantController < ApplicationController
  def index
    @Pant = Pant.all
    render json: @Pant.as_json
  end

  def show
    @Pants = Pant.find(2)
    render json:@Pants
  end
end
