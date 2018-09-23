class UsersRegistrationsController < ApplicationController
  respond_to :html

  def new
    @user_list = UsersRegistration.new(users: [User.new])
  end

  def create
    @user_list = UsersRegistration.new(users_registration_params)
    @user_list.register
    respond_with @user_list, location: root_path
  end

  private

    def users_registration_params
      params.require(:users_registration).permit(users_attributes: [:name])
    end
end
