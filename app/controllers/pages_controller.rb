class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @plants_attention = UserPlant.select{|user_plant| (user_plant.latest_hygrometry < user_plant.plant.min_baseline_hygrometry ||user_plant.latest_hygrometry > user_plant.plant.max_baseline_hygrometry)}
  end
end
