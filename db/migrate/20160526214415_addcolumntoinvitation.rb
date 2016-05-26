class Addcolumntoinvitation < ActiveRecord::Migration
  def change
    add_column :invitations, :date_cuisine, :string
  end
end
