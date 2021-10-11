module ApplicationHelper

    def current_user
        @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end
    
    def errors_message(object)
        if object.errors.any?
            tag.div id: "error_explanation" do
                pluralize(object.errors.count, "error")
            
                tag.ul do
                    object.errors.map do |error|
                        concat tag.li error.full_message
                    end.join.html_safe
                end
            end
        end
    end
   
end
