class ChangeUsers < ActiveRecord::Migration
  def change
    add_column :users, :fbToken_expires_at, :datetime, :null => false, :default => 0
  end
end
