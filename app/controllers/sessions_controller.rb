class SessionsController < ApplicationController

    def new
        @person = Person.new
    end

    def create
        @person = Person.find_by(email: params[:person][:email])
        if @person && @person.authenticate(params[:person][:password])
            sessions[:id] = @person.id
            redirect_to person_path(@person)
        else
            flash[:errors] = ['Email or password is incorrect']
            redirect_to login_path
        end
    end 

    def destroy
        session.clear
        redirect_to login_path
    end
end 