class Registration
  include ActiveModel::Model

  attr_accessor(
    :name
  )

  validates :name, presence: true

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
