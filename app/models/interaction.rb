class Interaction < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :interacted_on, polymorphic: true

  # Scopes
  scope :comments, -> { where(interacted_on_type: 'Comment') }
  scope :posts,    -> { where(interacted_on_type: 'Post') }

  # Enums
  enum action: { like: 0, dislike: 1 }
end
