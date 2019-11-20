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

  def vote_count
    post_votes.count
  end

  def has_voted?(post)
    # returns true if the user has a post vote for a post option of this post
    post_votes.where(post_option: post.post_options).any?
    # else returns false
  end
end
