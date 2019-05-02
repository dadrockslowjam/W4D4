class SessionsController < ApplicationController
    def new
        render :new
    end

    def create
        user = User.find_by_credentials(params[:user][:name], params[:user][:password])

        if user
            login!(user)
            redirect_to bands_url
        else
            flash.now[:errors] = ["Invalid name or password"]
            render :new
        end
    end

    def destroy
        logout!
        redirect_to new_session_url
    end
end