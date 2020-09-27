class ChangeColumnTypeOfPosts < ActiveRecord::Migration[6.0]
  def change
    change_column :posts, :body, :text
  end
end
