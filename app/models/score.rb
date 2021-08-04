class Score < ApplicationRecord
    belongs_to :user
    belongs_to :workout

    #scope :order_by_rx, -> {order(:rx)}
    scope :order_by_result_time, -> (workout_name) {joins(:workout).where(workout: {name: workout_name}).where(workout: {category: "For time"}).order(:rx, :result_time)}
    scope :order_by_result_reps, -> (workout_name) {joins(:workout).where(workout: {name: workout_name}).where.not(workout: {category: "For time"}).order(:rx, :result_reps)}

    def rx_scale
        if self.rx == false
            self.rx = "Scale"
        else
            self.rx = "RX"
        end
    end

    def result_by_category
        if self.workout.category == "For time"
            self.result_time.strftime("%M:%S")
        end
    end

    def result_time_formatted
        # self.result_time.strftime("%M:%S")
        self.result_time.to_s(:time)
    end

    def self.order_by_rx_and_result
        Workout.all.each do |w|
            if w.category == "For time"
                self.order(:rx).order(result_time: :asc)
            else
                self.order(:rx).order(result_reps: :desc)
            end
        end
    end

end