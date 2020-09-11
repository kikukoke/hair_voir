class SessionsController < ApplicationController

    def login_form
        
    end

    def login
        user = User.find_by(id: 1) 

        if user.authenticate(params[:session][:password]) 
            session[:admin] = true
            redirect_to(reservations_top_path(Date.today))
        else
            render("sessions/login_form")
        end

    end

    def logout
    end
    
end
