class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :pictures, :tags do |t|
      # t.index [:picture_id, :tag_id]
      # t.index [:tag_id, :picture_id]
    end
  end
end
