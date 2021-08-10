class User < ApplicationRecord
    belongs_to :gym, optional: true
    has_many :scores
    has_many :workouts, through: :scores
    
    validates :email, presence: true, uniqueness: true
    validates :first_name, :last_name, presence: true
    has_secure_password
    #accepts_nested_attributes_for :gym

    def gym_attributes=(hash_of_attributes)
        if !hash_of_attributes["name"].blank?
            self.gym = Gym.find_or_create_by(hash_of_attributes)
        end
    end

    def self.from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
          u.email = auth['info']['email']
          u.first_name = auth['info']['first_name']
          u.last_name = auth['info']['last_name']
          u.password = SecureRandom.hex(15)
        end
    end
end