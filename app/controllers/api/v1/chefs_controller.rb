class Api::V1::ChefsController < ApplicationController

  def index
    @chefs = Chef.all
    render json: @chefs
  end

end
