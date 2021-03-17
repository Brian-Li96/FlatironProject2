class PeopleController < ApplicationController

    before_action :not_logged_in, only: [:show]

    def new
        @person = Person.new
    end

    def show
        @person = Person.find(params[:id])
    end
    

    def create
    @person = Person.new(person_params)
    if @person.valid?
        @person.save
        session[:id] = @person.id 
        redirect_to person_path(@person)
    else 
        flash[:errors] = @person.errors.full_messages
        redirect_to new_person_path
    end 
    end 


    private 
    def person_params
        params.require(:person).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end 
end 
