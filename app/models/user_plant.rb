class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  ROOMS = [
    :living_room,
    :parent_room,
    :bedroom,
    :patio,
    :kitchen,
    :shower_room
  ]
  def set_latest_hygrometry_to_default_value
    self.latest_hygrometry = plant.baseline_hygrometry
  end

  def needing_attention
    hygrometry < 60
    # true if hygrometry < 60
  end
end
