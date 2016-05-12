class AddContentToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :content, :string
  end
end
