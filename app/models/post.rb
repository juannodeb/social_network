class Post < ApplicationRecord
  # Associations
  belongs_to :user

  has_many :interactions, as: :interacted_on
  has_many :comments

  # Validations
  validates_presence_of :content

  # Scopes
  scope :ordered_by_created_at, -> { order(created_at: :desc) }
end
