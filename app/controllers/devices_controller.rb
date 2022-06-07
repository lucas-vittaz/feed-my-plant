class DevicesController < ApplicationController
  def create
    @device = Device.new(device_params)
    if @device.save
      # Flash notice // Your paired this arduino to your plant
      redirect_to plant_path
    else
      render plant_path
    end
  end
  
  def telemetry
    Device.find_or_create_by(external_id: params[:external_id])
  end

  private

  def device_params
    params.require(:device).permit(:external_id)
  end

end
