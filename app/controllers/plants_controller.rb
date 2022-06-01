class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end
  def show
    @plant = Plant.find(params[:id])
    @user_plant = UserPlant.new
    @user_plant = UserPlant.create
  end

end
