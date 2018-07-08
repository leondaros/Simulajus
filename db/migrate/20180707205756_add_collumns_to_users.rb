class AddCollumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :type, :integer
    add_column :users, :exp, :float
  end
end
