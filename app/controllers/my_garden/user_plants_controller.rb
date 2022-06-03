class MyGarden::UserPlantsController < ApplicationController
  def index
    @user_plants = current_user.user_plants # all plants from current user
   
    @user_plants = @user_plants.where(room: params[:room]) if params[:room].present? #filter plant by room
  end

  def show
    @user_plant = UserPlant.find(params[:user_plant_id])
  end

  def create
    @user_plant = UserPlant.new(user_plant_params)
    if @user_plant.save
      # Flash notice // Your added thisplant to your garden
      redirect_to my_garden_user_plants_path
    else
      render plant_path
    end
  end

  def destroy
    @user_plant.destroy
  end

  private

  def user_plant_params
    params.require(:user_plant).permit(:plant_id, :user_id, :room, :latest_hygrometry)
  end
end
