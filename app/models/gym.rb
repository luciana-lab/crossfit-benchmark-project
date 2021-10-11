class Gym < ApplicationRecord
    has_many :users, dependent: :destroy
    validates :name, presence: true, uniqueness: true

    #gym with most users
    scope :gym_most_users, -> {joins(:users).group(:gym_id).order('COUNT(users.id) desc').limit(1)}
end