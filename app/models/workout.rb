class Workout < ApplicationRecord
    has_many :scores
    has_many :users, through: :scores
    validates :name, presence: true, uniqueness: true
    validates :category, :description, presence: true

    scope :category_nav_selector, -> (category) {where('category = ?', category)}
    scope :wod_group_selector, -> (wod_group) {where('wod_group = ?', wod_group)}
    
    def self.search(search)
        where("LOWER(name) LIKE :term OR LOWER(wod_group) LIKE :term OR LOWER(category) LIKE :term OR LOWER(description) LIKE :term", term: "%#{search}%")
    end
end