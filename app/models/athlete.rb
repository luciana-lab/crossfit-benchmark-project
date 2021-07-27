class Athlete < ApplicationRecord
    belongs_to :gym
    has_many :scores
    has_many :workouts, through: :scores
end