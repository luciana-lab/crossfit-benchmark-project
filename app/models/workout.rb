class Workout < ApplicationRecord
    has_many :scores
    has_many :users, through: :scores

    def group_other=(value)
        self.group = value if group == 'Other'
    end
    def group_other
        group
    end
end