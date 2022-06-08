class DevicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:telemetry]

  def telemetry
    # Update le user plant /// ==> UserPlant qui est pairé.
    # // on a access au params d'external id
    # params[:telemetry]
    device = Device.find_or_create_by(external_id: params[:external_id])
    user_plant = device.user_plant
    user_plant.update!(latest_hygrometry: params[:sensor])

    head :ok
  end

  def create
    @device = Device.new(device_params)
    if @device.save
      # Flash notice // Your paired this arduino to your plant
      redirect_to plant_path
    else
      render plant_path
    end
  end

  # def telemetry
  #   Device.find_or_create_by(external_id: params[:external_id])
  # end

  private

  def device_params
    params.require(:device).permit(:external_id)
  end

end
