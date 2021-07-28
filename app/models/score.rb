class Score < ApplicationRecord
    belongs_to :athlete
    belongs_to :workout

    def scale
        if self.rx == 0
            rx = "scale"
        end
    end

    def result_for_time
        self.time.strftime("%M:%S")
    end
end