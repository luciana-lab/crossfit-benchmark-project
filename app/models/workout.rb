class Workout < ApplicationRecord
    has_many :scores
    has_many :users, through: :scores
    validates :name, presence: true, uniqueness: true
    validates :category, :description, presence: true

    # def workout=(hash_of_attributes)
    #     if !hash_of_attributes["group"].blank?
    #         self = self.find_or_create_by(hash_of_attributes)
    #     end
    # end

    def group_other=(value)
        self.group = value if group == 'Other'
    end

    def group_other
        group
    end
    
end