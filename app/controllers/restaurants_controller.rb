class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    Restaurant.create!(params.require(:restaurant).permit(:name, :address, :phone_number, :category))
    redirect_to "/restaurants"
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(params.require(:restaurant).permit(:name, :address, :phone_number, :category))
    redirect_to restaurant_path(@task.id)
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to "/restaurants"
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end
end
