class Picture < ActiveRecord::Base
  belongs_to :cuisine
  has_many :pic_tags
  has_many :tags, through: :pic_tags
end
