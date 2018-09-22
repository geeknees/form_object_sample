class UsersRegistrationsController < ApplicationController
  respond_to :html

  def new
    @user_list = UsersRegistration.new(users: [User.new])
  end

  def create
    @user_list = UsersRegistration.new(params[:user_list_form])
    respond_with @user_list, location: root_path
  end

end
