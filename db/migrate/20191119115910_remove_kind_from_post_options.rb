class RemoveKindFromPostOptions < ActiveRecord::Migration[5.2]
  def change
    remove_column :post_options, :kind, :string
  end
end
