class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :like
      t.integer :user_id
      t.integer :picture_id

      t.timestamps null: false
    end
  end
end
