class Post < ApplicationRecord
  belongs_to :user
  has_many :post_options, dependent: :destroy
  has_many :post_categories
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 20 }
end
