class ApplicationController < ActionController::Base
    def current_user
        @current_user = User.find_by(session_token: session[:sesion_token])
    end

    def ensure_logged_in
        redirect_to new_session_url unless logged_in?
    end

    def log_in!(user)
        session[:session_token] = user.reset_session_token!
        @current_user = user
    end

    def log_out!
        current_user.reset_session_token
        @current_user = nil
    end

    def logged_in?
        !!current_user
    end
end
