class MyGarden::UserPlantsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:sensor_hygrometry]
  def index
    @plants_attention = UserPlant.select{|user_plant| (user_plant.latest_hygrometry < user_plant.plant.min_baseline_hygrometry ||user_plant.latest_hygrometry > user_plant.plant.max_baseline_hygrometry)}
    @user_plants = current_user.user_plants.order(created_at: :desc) # all plants from current user

    @user_plants = @user_plants.where(room: params[:room]) if params[:room].present? #filter plant by room
  end

  # def sensor_hygrometry
  #   p params[:sensor]

  #   user_plant = UserPlant.last
  #   user_plant.update(latest_hygrometry: params[:sensor])

  #   head :ok
  # end

  def pair_device
    @device = Device.find_by(external_id: params[:device][:external_id])
    @user_plant = UserPlant.find(params[:id])
    @user_plant.device_id = @device.id
    if @user_plant.save
      redirect_to my_garden_user_plant_path(@user_plant)
    else
      render :show
    end
  end

  def unpair_device
    @user_plant = UserPlant.find(params[:id])
    @user_plant.device_id = nil
    if @user_plant.save
      redirect_to my_garden_user_plant_path(@user_plant)
    else
      render :show
    end
  end

  def show
    @plants_attention = UserPlant.select{|user_plant| (user_plant.latest_hygrometry < user_plant.plant.min_baseline_hygrometry ||user_plant.latest_hygrometry > user_plant.plant.max_baseline_hygrometry)}
    @user_plant = UserPlant.find(params[:id])
  end

  def create
    @user_plant = UserPlant.new(user_plant_params)
    @user_plant.set_latest_hygrometry_to_default_value
    if @user_plant.save
      # Flash notice // Your added thisplant to your garden
      redirect_to my_garden_user_plants_path
    else
      render plant_path
    end
  end

  def update
    @user_plant = UserPlant.find(params[:id])
    if @user_plant.update(user_plant_params)
      redirect_to my_garden_user_plants_path(@user_plant, room: @user_plant.room)
    else
      render :show
    end
  end


  def destroy
    @userplant = UserPlant.find(params[:id])
    @userplant.destroy
    redirect_to my_garden_user_plants_path
  end

  def needing_attention
    @plants_attention = UserPlant.select{|user_plant| (user_plant.latest_hygrometry < user_plant.plant.min_baseline_hygrometry ||user_plant.latest_hygrometry > user_plant.plant.max_baseline_hygrometry)}
  end


  private


  def user_plant_params
    params.require(:user_plant).permit(:plant_id, :user_id, :room)
  end

end
