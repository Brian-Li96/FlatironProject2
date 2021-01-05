class ApplicationController < ActionController::Base

def current_person
    Person.find_by(id:session[:id])
end

def logged_in?
    !!current_person
end

def not_logged_in
    redirect_to login_path unless logged_in?
end


end
