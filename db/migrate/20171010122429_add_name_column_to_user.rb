class AddNameColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users,:name,:string
    add_column :users,:before_action,:integer
  end
end
