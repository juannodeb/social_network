class Post < ApplicationRecord
  # Associations
  belongs_to :user

  has_many :interactions, as: :interacted_on
end
