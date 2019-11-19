class RenameCategoryInPostOptions < ActiveRecord::Migration[5.2]
  def change
    rename_column :post_options, :category, :kind
  end
end
