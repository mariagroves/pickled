class CreatePostOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :post_options do |t|
      t.string :type
      t.string :image
      t.text :content
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
