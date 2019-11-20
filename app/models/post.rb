class Post < ApplicationRecord
  belongs_to :user
  has_many :post_options, dependent: :destroy
  has_many :post_categories
  has_many :comments
  accepts_nested_attributes_for :post_options
  validates :title, presence: true
  validates :description, presence: true
  validates :kind, presence: true
end
