class Plant < ApplicationRecord
  has_many :user_plants
  has_one_attached :photo
end
