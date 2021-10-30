class Comment < ApplicationRecord
  # Associations
  belongs_to :post
  belongs_to :user

  has_many :interactions, as: :interacted_on
end
