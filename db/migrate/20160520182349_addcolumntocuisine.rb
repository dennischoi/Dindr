class Addcolumntocuisine < ActiveRecord::Migration
  def change
    add_column :cuisines, :label, :string
  end
end
