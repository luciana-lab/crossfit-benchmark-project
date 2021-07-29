class Score < ApplicationRecord
    belongs_to :user
    belongs_to :workout

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

    def self.search_by_rx_scale
        where(rx_scale)
    end
end