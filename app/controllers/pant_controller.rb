class PantController < ApplicationController
  def index
    @Pant = Pant.all
    render json: @Pant.as_json
  end
end
