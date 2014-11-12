class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(restaurant_id: @restaurant.id)
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant_new = Restaurant.new(restaurant_params)
    if @restaurant_new.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end

  end

  def destroy
    @restaurant = restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurants_path
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phonenumber, :category)
  end

end
