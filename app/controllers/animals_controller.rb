class AnimalsController < ApplicationController

def index
    @animals = Animal.all
end

def show
    @animal = Animal.find(params[:id])
end

def new
    @animal = Animal.new
end 

def create
    @animal = Animal.new(animal_params)
    if @animal.valid?
       @animal.save
    # animal = Animal.create(animal_params)
       redirect_to animal_path(@animal)
    else
        flash[:errors]= @animal.errors.full_messages
        redirect_to new_animal_path
    end
end

def edit
    @animal = Animal.find(params[:id])
end

def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
    redirect_to animal_path(@animal)
end 

def destroy #delete adopted animals from shelter app 
    @animal.destroy
    redirect_to animal_path
end


def animal_params
    params.require(:animal).permit(:name, :age, :gender, :breed, :personality, :species, :shelter_id, :img_url)
end 



end