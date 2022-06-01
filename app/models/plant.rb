class Plant < ApplicationRecord
  has_many :user_plants
  has_one_attached :photo

  WATER_LEVELS = %i[low medium high]
  LIGHT_LEVELS = %i[low medium high]
  CARE_LEVELS  = %i[beginner intermediate advanced]

  scope :with_water_level, ->(level) do
    if level == :high
      baseline_hygrometry = 600
    elsif level == :medium

    end

    # baseline_hygrometry = {
    #   high:   600,
    #   medium: 300
    # }[level]

    where('baseline_hygrometry >= :baseline_hygrometry', baseline_hygrometry: baseline_hygrometry)
  end
end

# Plant.with_water_level(:high) # A utiilser dans le controller avec les filtres pour trouver une plante
