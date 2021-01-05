class AdoptionsController < ApplicationController

def new
    @adoption = Adoption.new
end

def create
    @adoption = Adoption.new(adoption_params)
    if @adoption.save 
        redirect_to adoption_path(@adoption)
    else
        render new_adoption_path 
    end
end

def adoption_params
    params.require(:adoption).permit(:person_id, :animal_id, :fee)
end


end 