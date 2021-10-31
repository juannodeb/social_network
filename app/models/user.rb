class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :trackable
  
  # Associations
  has_many :comments
  has_many :interactions
  has_many :posts

  # Validations
  validates_presence_of :first_name, :last_name, :bio, on: :update

  # Methods
  def name
    "#{first_name} #{last_name}"
  end
end
