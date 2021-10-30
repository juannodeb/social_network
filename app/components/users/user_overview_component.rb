# frozen_string_lirteral: true

class Users::UserOverviewComponent < ViewComponent::Base
  attr_reader :user

  def initialize(user:)
    @user = user
  end

  def bio
    user.bio
  end

  def name
    user.name
  end

  def likes
    user.interactions.likes.count
  end

  def dislikes
    user.interactions.dislikes.count
  end
end
