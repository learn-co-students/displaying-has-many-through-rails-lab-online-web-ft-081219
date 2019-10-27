class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:show]

    private
    
    def set_doctor
        @doctor = Doctor.find(params[:id])
    end
end
