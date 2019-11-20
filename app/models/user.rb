class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :post_votes, dependent: :destroy
  has_many :comments
  validates :username, presence: true
  # validates :image, presence: true
  validates :bio, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
