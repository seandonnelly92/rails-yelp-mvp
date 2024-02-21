class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # index displays all restaurant
  def index
    @restaurants = Restaurant.all
  end

  # show displays the restaurant that has been set by set_restaurant
  def show
  end

  # new brings you to the add-new-restaurant form
  def new
    @restaurant = Restaurant.new
  end

  # create posts the new restaurant to the database
  def create
    @restaurant = Restaurant.new(task_params)
    # Gets the result of the restaurant_params function as parameters
    @restaurant.save
    # Redirect the user to the new restaurant's page
    redirect_to restaurants_path(@restaurant)
  end

  # edit brings up the restaurant form, filled in
  def edit
  end

  # update posts the new restaurant to the database
  def update
  end

  def destroy
    @restaurant.destroy
    # No need for app/views/tasks/destroy.html.erb
    redirect_to restaurants_path, status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:title, :details, :address, :phone_number, :category)
    # Allow us to access these fields from the user's inputs in the form
  end
end
