class Plant < ApplicationRecord
  has_many :user_plants
  has_one_attached :photo

  WATER_LEVELS = %i[low medium high]
  LIGHT_LEVELS = %i[low medium high]
  CARE_LEVELS  = %i[beginner intermediate advanced]

  scope :filter_by_water_need, -> (water_need) { where water_need: water_need }
  scope :filter_by_light_levels, -> (light_level) { where light_level: light_level }
  scope :filter_by_care_levels, -> (care_level) { where care_level: care_level }

  scope :with_water_level, ->(level) do
    if level == :high
      baseline_hygrometry = 600
    elsif
      level == :medium
    else
      level == :low
    end

    where('baseline_hygrometry >= :baseline_hygrometry', baseline_hygrometry: baseline_hygrometry)
  end
end

# Plant.with_water_level(:high) # A utiilser dans le controller avec les filtres pour trouver une plante
