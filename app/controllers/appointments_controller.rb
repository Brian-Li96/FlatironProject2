class AppointmentsController < ApplicationController

    def index
        @appointments = Appointment.all
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new 
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.new(appointment_params)
        if @appointment.save
            redirect_to appointments_path(@appointment)
        else
            render new_appointment_path
        end
    end
    

    def edit 
        @appointment = Appointment.find(params[:id])
    end

    def update
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.update(appointment_params)
        redirect_to appointment_path
    end

    def destroy
        @appointment = Appointment.find_by(id: params[:id])
        @appointment.destroy
        redirect_to appointments_path
    end

    def appointment_params
        params.require(:appointment).permit(session[:id], :shelter_id, :animal_id, :date, :time)
    end
        
end