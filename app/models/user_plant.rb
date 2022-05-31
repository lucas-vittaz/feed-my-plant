class UserPlant < ApplicationRecord
  belongs_to :user
  belongs_to :plant

  def needing_attention
    hygrometry < 60 
    # true if hygrometry < 60
  end
end
