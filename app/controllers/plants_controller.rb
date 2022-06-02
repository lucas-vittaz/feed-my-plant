class PlantsController < ApplicationController
  def index

    @plants = Plant.all

    @plants = Plant.filter_by_water_need(params[:water_need]) if params[:water_need].present?
    @plants = Plant.filter_by_care_levels(params[:care_level]) if params[:care_level].present?
    @plants = Plant.filter_by_light_levels(params[:light_level]) if params[:light_level].present?
  end

  def show
    @plant = Plant.find(params[:id])
    @user_plant = UserPlant.new
    @user_plant = UserPlant.create
  end

end
