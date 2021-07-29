class User < ApplicationRecord
    belongs_to :gym
    has_many :scores
    has_many :workouts, through: :scores
    has_secure_password
end