class Comment < ApplicationRecord
  # Associations
  belongs_to :post
  belongs_to :user

  has_many :interactions, as: :interacted_on

  # Validations
  validates_presence_of :content

  # Scopes
  scope :ordered_by_created_at, -> { order(created_at: :desc) }
end
