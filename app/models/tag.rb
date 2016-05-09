class Tag < ActiveRecord::Base
  has_many :pic_tags
  has_many :pictures, through: :pic_tags

end
