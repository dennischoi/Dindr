class Picture < ActiveRecord::Base
  belongs_to :cuisine
  has_and_belongs_to_many :tags

  validates :url, presence: true
  accepts_nested_attributes_for :cuisine, :tags

end
