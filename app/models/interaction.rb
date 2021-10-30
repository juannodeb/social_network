class Interaction < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :interacted_on, polymorphic: true

  # Scopes
  scope :likes, -> { where(interacted_on_type: 'likes') }
  scope :dislikes, -> { where(interacted_on_type: 'dislikes') }

  # Enums
  enum action: { like: 0, dislike: 1 }
end
