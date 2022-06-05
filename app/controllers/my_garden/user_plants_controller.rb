class MyGarden::UserPlantsController < ApplicationController
  def index
    @user_plants = current_user.user_plants # all plants from current user

    @user_plants = @user_plants.where(room: params[:room]) if params[:room].present? #filter plant by room
  end

  def show
    @user_plant = UserPlant.find(params[:id])
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


  def update
    @user_plant = UserPlant.find(params[:id])

    @user_plant.update(params[:room])
    redirect_to my_garden_user_plant_path(@user_plant)
  end

  def destroy
  end

  def needing_attention
    @plants_attention = UserPlant.select{|user_plant| (user_plant.latest_hygrometry != user_plant.plant.baseline_hygrometry)}
  end

  def destroy
    @user_plant.destroy
  end

  private

  def user_plant_params
    params.require(:user_plant).permit(:plant_id, :user_id, :room, :latest_hygrometry,:baseline_hygrometry)
  end

end
