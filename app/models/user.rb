# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  username               :string
#  image                  :string
#  bio                    :text
#

class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :post_options, through: :posts
  has_many :post_votes, through: :post_options
  has_many :own_votes, foreign_key: 'user_id', class_name: "PostVote", dependent: :destroy
  has_many :comments
  validates :username, presence: true
  # validates :image, presence: true
  validates :bio, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def vote_count
    own_votes.count
  end

  def current_notifications_count
    post_votes.where('post_votes.created_at BETWEEN ? AND ?', last_visited, Time.now).count
  end

  def has_voted?(post)
    # returns true if the user has a post vote for a post option of this post
    own_votes.where(post_option: post.post_options).any?
    # else returns false
  end
end
