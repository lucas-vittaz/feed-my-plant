class DevicesController < ApplicationController

  def telemetry
    Device.find_or_create_by(external_id: params[:external_id])
  end
end
