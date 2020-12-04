class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end
end
