class AddRolesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :superwizzard_role, :boolean, default: false
    add_column :users, :wizzard_role, :boolean, default: false
    add_column :users, :user_role, :boolean, default: true
  end
end
