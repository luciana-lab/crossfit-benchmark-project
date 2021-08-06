class Score < ApplicationRecord
    belongs_to :user
    belongs_to :workout

    scope :order_by_result_time, -> (workout_name) {joins(:workout).where(workout: {name: workout_name}).where(workout: {category: "For time"}).order(rx: :desc).order(:result_time)}
    scope :order_by_result_reps, -> (workout_name) {joins(:workout).where(workout: {name: workout_name}).where.not(workout: {category: "For time"}).order(rx: :desc).order(:result_reps)}
end