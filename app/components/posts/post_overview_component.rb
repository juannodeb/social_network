# frozen_string_literal: true

class Posts::PostOverviewComponent < ViewComponent::Base
  with_collection_parameter :post
  attr_reader :post

  def initialize(post:)
    @post = post
  end

  def content
    post.content
  end

  def user
    post.user.name
  end
end
