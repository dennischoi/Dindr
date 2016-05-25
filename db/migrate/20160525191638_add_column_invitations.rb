class AddColumnInvitations < ActiveRecord::Migration
  def change
    add_column :invitations, :pending, :boolean, :default => true
    add_column :users, :down_to_meet, :boolean, :default => false
  end
end
