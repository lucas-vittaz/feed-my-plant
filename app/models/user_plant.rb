class UserPlant < ApplicationRecord
  belongs_to :users
  belongs_to :plants
end
