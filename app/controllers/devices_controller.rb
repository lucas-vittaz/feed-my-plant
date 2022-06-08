class DevicesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:telemetry]

  def telemetry
    # params[:telemetry]
    user_plant = UserPlant.last
    user_plant.update(latest_hygrometry: params[:sensor])

    head :ok
  end


  private

  def devices_params
    params.require(:telemetry).permit(:external_id, :sensor)
  end
end
