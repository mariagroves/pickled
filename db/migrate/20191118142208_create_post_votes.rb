class CreatePostVotes < ActiveRecord::Migration[5.2]
  def change
    create_table :post_votes do |t|
      t.references :user, foreign_key: true
      t.references :post_option, foreign_key: true

      t.timestamps
    end
  end
end
