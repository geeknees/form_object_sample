class RegistrationsController < ApplicationController
  respond_to :html

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
    @registration.register

    respond_with @registration, location: root_path
  end

  private

    def registration_params
      params.require(:registration).permit(:name)
    end
end
