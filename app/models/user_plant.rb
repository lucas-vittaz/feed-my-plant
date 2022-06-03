class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  ROOMS = [
    :bedroom,
    :kitchen,
    :living_room,
    :patio,
    :parent_room,
    :shower_room
  ]

  def needing_attention
    hygrometry < 60
    # true if hygrometry < 60
  end
end
