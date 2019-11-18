class Post < ApplicationRecord
  belongs_to :user
  has_many :post_options, dependent: :destroy
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 120 }
end
