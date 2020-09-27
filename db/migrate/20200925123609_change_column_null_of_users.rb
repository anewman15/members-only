class ChangeColumnNullOfUsers < ActiveRecord::Migration[6.0]
  def change
    change_column_null :users, :fname, true
    change_column_null :users, :lname, true
    change_column_null :users, :username, true
  end
end
