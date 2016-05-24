class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.date :date
      t.integer  :send_user_id
      t.integer  :accept_user_id

      t.timestamps null: false
    end
  end
end
