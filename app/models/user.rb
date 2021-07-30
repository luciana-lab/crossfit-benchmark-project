class User < ApplicationRecord
    belongs_to :gym
    has_many :scores
    has_many :workouts, through: :scores
    validates :email, presence: true, uniqueness: true
    has_secure_password
end