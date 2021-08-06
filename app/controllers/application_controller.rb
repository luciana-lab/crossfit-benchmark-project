class ApplicationController < ActionController::Base
    include ApplicationHelper

    def not_found
        raise ActionController::RecordNotFound.new('Not Found')
      rescue
        render_404
    end
    
    def render_404
        render file: Rails.root.join('public/404.html')
    end
      
    private
    def redirect_if_not_logged_in?
        redirect_to login_path if !logged_in?
    end

end
