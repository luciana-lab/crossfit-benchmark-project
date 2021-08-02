class Workout < ApplicationRecord
    has_many :scores
    has_many :users, through: :scores
    validates :name, presence: true, uniqueness: true
    validates :category, :description, presence: true
    
    def self.search(search)
        where("LOWER(name) LIKE :term OR LOWER(category) LIKE :term OR LOWER(description) LIKE :term", term: "%#{search}%")
    end
end