class AppointmentsController < ApplicationController

    def new 
        @appointment = Appointment.new
    end

    def create
        @appointment = Appointment.new(app_params)
        if @appointment.save
        redirect_to appointment_path(@appointment)
        end
        
end