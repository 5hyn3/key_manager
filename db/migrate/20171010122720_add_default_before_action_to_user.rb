class AddDefaultBeforeActionToUser < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :before_action, :integer, :default => 0
  end
end
