class AdoptionsController < ApplicationController

    def index
        @adoptions = Adoption.all
    end

    def show
        @adoption = Adoption.find(params[:id])
    end

    def new
        @adoption = Adoption.new
    end

    def create
        @adoption = Adoption.new(adoption_params)
        if @adoption.save 
            redirect_to adoptions_path(@adoption)
        else
            render new_adoption_path 
        end
    end

    def adoption_params
        params.require(:adoption).permit(:person_id, :animal_id)
    end
end 