# == Schema Information
#
# Table name: posts
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :text
#  user_id     :bigint
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  kind        :string
#

class Post < ApplicationRecord
  belongs_to :user
  has_many :post_options, dependent: :destroy
  has_many :post_votes, through: :post_options
  has_many :post_categories, dependent: :destroy
  has_many :categories, through: :post_categories
  has_many :comments
  accepts_nested_attributes_for :post_options
  validates :title, presence: true
  validates :description, presence: true
  validates :kind, presence: true
  # validate :has_category

  def vote_count
    post_votes.count
  end

  def has_category
    self.errors.add(:post, "needs at least one category") if post_categories.empty?
  end
end
