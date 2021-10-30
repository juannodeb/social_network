class Interaction < ApplicationRecord
  # Associations
  belongs_to :user
  belongs_to :interacted_on, polymorphic: true
end
