class PlantsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR scientific_name ILIKE :query"
      @plants = Plant.where(sql_query, query: "%#{params[:query]}%")
    else
      @plants = Plant.all
    end
  end

  def show
    @plant = Plant.find(params[:id])
    @user_plant = UserPlant.new
    @user_plant = UserPlant.create
  end

end
