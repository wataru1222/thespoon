class RestaurantsController < ApplicationController


  def index
    @restaurants = Restaurant.all
  end

  def home
   @home
  end

  def new
   @restaurant = Restaurant.new
  end

  def show
  @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    render 'show'
  end


  def create
    @resturant = Restaurant.new(restaurant_params)
    @resturant.save
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
    :name, :address, :category, :stars)
  end
end
