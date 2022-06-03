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

  def needing_attention
    hygrometry < 60
    # true if hygrometry < 60
  end
end
