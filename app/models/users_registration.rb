class UsersRegistration
  include ActiveModel::Model

  attr_accessor(
    :users
  )

  def users_attributes=(attributes)
    @users ||= []
    attributes.each do |i, user_params|
      @users.push(User.new(user_params))
    end
  end

  def register
    if valid?
      # Do something interesting here
      # - create user
      # - send notifications
      # - log events, etc.
    end
  end

  private

  def create_user
    # ...
  end

end
