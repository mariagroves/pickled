class RenameTypeInPostOptions < ActiveRecord::Migration[5.2]
  def change
    rename_column :post_options, :type, :category
  end
end
