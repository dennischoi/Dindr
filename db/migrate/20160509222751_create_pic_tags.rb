class CreatePicTags < ActiveRecord::Migration
  def change
    create_table :pic_tags do |t|
      t.integer :picture_id
      t.integer :tag_id

      t.timestamps null: false
    end
  end
end
