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
      create_user
    end
  end

  private

  def create_user
    ActiveRecord::Base.transaction do
      self.users.each do |user|
        User.create!(name: user.name)
      end
    end
  end

end
