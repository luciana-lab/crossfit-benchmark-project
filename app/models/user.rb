class User < ApplicationRecord
    belongs_to :gym
    has_many :scores
    has_many :workouts, through: :scores
    validates :email, presence: true, uniqueness: true
    has_secure_password
    accepts_nested_attributes_for :gym #, reject_if: proc { |attributes| attributes['website'].blank? || attributes['address'].blank? }

    def gym_attributes=(hash_of_attributes)
        if !hash_of_attributes["name"].blank?
            self.gym = Gym.find_or_create_by(hash_of_attributes)
        end
    end
end