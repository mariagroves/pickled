class PostVote < ApplicationRecord
  belongs_to :user
  belongs_to :post_option
end