module ScoresHelper
    def format_time(time, format = '%M:%S')
        time.blank? ? '' : time.to_s(format)
    end

    def format_date(date, format = :long)
        date.blank? ? '' : date.to_s(format)
    end
    
    # def rx_scale(score)
    #     if score.rx == false
    #         score.rx = "Scale"
    #     else
    #         score.rx = "RX"
    #     end
    # end
end