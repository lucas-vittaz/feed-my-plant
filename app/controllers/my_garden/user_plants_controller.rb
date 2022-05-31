class Mygarden::UserPlantsController < ApplicationController
  def index
    @user_plants = UserPlant.all
  end

  def show
    @user_plant = UserPlant.find(params[:user_plant_id])
  end

  def create
    @user_plant = UserPlant.new(user_plant_params)
    @user_plant.plant_id = @plant
    @user_plant.user_id = current_user.id
    @userplant.save
    # Flash notice // Your added thisplant to your garden
    redirect_to user_plants_path
  end

  def destroy
    @user_plant.destroy
  end

  private

  def user_plant_params
    params.require(:user_plant).permit(:plant_id, :user_id)
  end
end
