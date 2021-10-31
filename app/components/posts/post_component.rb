# frozen_string_literal: true

class Posts::PostComponent < ViewComponent::Base
  attr_reader :post

  def initialize(post: )
    @post = post
  end

  def content
    post.content
  end

  def created_at
    post.created_at.strftime('%B %d, %Y')
  end

  def creator
    post.user.name
  end

  def id
    post.id
  end
end
