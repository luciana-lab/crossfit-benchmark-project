module ScoresHelper
    
    def format_time(time, format = '%M:%S')
        time.blank? ? '' : time.to_s(format)
    end

    def format_date(date, format = :long)
        date.blank? ? '' : date.to_s(format)
    end
    
    def helper_rx_scale(score)
        if score.rx == false
            score.rx = "Scale"
        else
            score.rx = "RX"
        end
    end

    def helper_public_private(score)
        if score.public?
            "Public Score: everyone can see it."
        else
            "Private Score: only you can see it."
        end
    end

    def helper_score_no_user(score)
        if score.user.blank?
            "Unknown"
        else
            "#{score.user.first_name} #{score.user.last_name}"
        end
    end

end