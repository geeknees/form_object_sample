class Registration
  include ActiveModel::Model

  attr_accessor(
    :name
  )

  validates :name, presence: true

  def register
    if valid?
      create_user
    end
  end

  private

  def create_user
    User.create!(name: name)
  end
end
