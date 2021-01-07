class AppointmentsController < ApplicationController

    def show
        @appointment = Appointment.find(params[:id])
    end

    def new 
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.new(date: params[:appointment][:date], time: params[:appointment][:time], shelter_id: 1)
        if @appointment.valid?
            redirect_to person_path(@appointment.person)
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
        redirect_to person_path(@appointment.person)
    end

    def appointment_params
        params.require(:appointment).permit!
    end
        
end