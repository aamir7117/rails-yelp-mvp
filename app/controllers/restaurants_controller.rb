class RestaurantsController < ApplicationController
  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def edit
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
