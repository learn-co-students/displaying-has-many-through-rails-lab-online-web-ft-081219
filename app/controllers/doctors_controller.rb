class DoctorsController < ApplicationController

    before_action :set_doctor, only: [:show, :edit, :update, :destroy]

    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new(doctor_params)
    end

    def create
        @doctor = Doctor.new(doctor_params)
        @doctor.save
        redirect_to doctor_path(@doctor)
    end

    def show
    end

    def edit
    end

    def update
        @doctor.update(doctor_params)
        redirect_to doctor_path(@doctor)
    end

    def destroy
        @doctor.destroy
        redirect_to doctors_path
    end

    private

    def set_doctor
        @doctor = Doctor.find(params[:id])
    end

    def doctor_params
        params.require(:doctor).permit(:name, :department)
    end
end
