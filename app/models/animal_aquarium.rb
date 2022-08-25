class AnimalAquarium < ApplicationRecord
  belongs_to :animal
  belongs_to :aquarium
end