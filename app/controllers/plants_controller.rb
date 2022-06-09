class PlantsController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR scientific_name ILIKE :query"
      @plants = Plant.where(sql_query, query: "%#{params[:query]}%")
      respond_to do |format|
        format.html # Follow regular flow of Rails
        format.text { render partial: "plants/list", locals: { plants: @plants }, formats: [:html] }
      end
    else
      @plants = Plant.none
      @plants = @plants + Plant.filter_by_water_need("low") if params[:water_level_low]
      @plants = @plants + Plant.filter_by_water_need("medium") if params[:water_level_medium]
      @plants = @plants + Plant.filter_by_water_need("high") if params[:water_level_high]

      @plants = @plants + Plant.filter_by_light_levels("low") if params[:light_level_low]
      @plants = @plants + Plant.filter_by_light_levels("medium") if params[:light_level_medium]
      @plants = @plants + Plant.filter_by_light_levels("high") if params[:light_level_high]

      @plants = @plants + Plant.filter_by_care_levels("beginner") if params[:care_level_beginner]
      @plants = @plants + Plant.filter_by_care_levels("intermediate") if params[:care_level_intermediate]
      @plants = @plants + Plant.filter_by_care_levels("advanced") if params[:care_level_advanced]
    end
  end

  def show
    @plant = Plant.find(params[:id])
    @user_plant = UserPlant.new
    @user_plant = UserPlant.create
  end

  private

  def define_plants
    @plants = filter_by_water_level + filter_by_care_levels + filter_by_light_levels
  end

  def filter_by_water_level
    define_water_level_params.any? ? @water_level = Plant.where(water_need: define_water_level_params) : @water_level = []
    @water_level
  end

  def filter_by_light_levels
    define_light_level_params.any? ? @light_level = Plant.where(light_level: define_light_level_params) : @light_level = []
    @water_level
  end

  def filter_by_care_levels
    define_care_level_params.any? ? @care_level = Plant.where(care_level: define_care_level_params) : @care_level = []
    @care_level
  end

  def define_care_level_params
    params_care_level = []
    params_care_level << "Beginner" if params["care_level_beginner"] == "true"
    params_care_level << "Intermediate" if params["care_level_intermediate"] == "true"
    params_care_level << "Advanced" if params["care_level_beginner"] == "true"
    params_care_level
  end

  def define_light_level_params
    params_light_level = []
    params_light_level << "Low" if params["care_level_low"] == "true"
    params_light_level << "Medium" if params["care_level_medium"] == "true"
    params_light_level << "High" if params["care_level_high"] == "true"
    params_light_level
  end

  def define_water_level_params
    params_water_level = []
    params_water_level << "Low" if params["water_level_low"] == "true"
    params_water_level << "Medium" if params["water_level_medium"] == "true"
    params_water_level << "High" if params["water_level_high"] == "true"
    params_water_level
  end


  # def filter_params_care_level
  #   @plants = Plant.where(care_level: "beginner") if params["care_level_low"] == "true"
  #   @plants = Plant.where(care_level: "medium") if params["care_level_medium"] == "true"
  #   @plants = Plant.where(care_level: "high") if params["care_level_high"] == "true"
  # end

  # def filter_params_light_level
  #   @plants = Plant.where(light_level: "low") if params["light_level_low"] == "true"
  #   @plants = Plant.where(light_level: "medium") if params["light_level_medium"] == "true"
  #   @plants = Plant.where(light_level: "high") if params["light_level_high"] == "true"
  # end
end
