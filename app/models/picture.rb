class Picture < ActiveRecord::Base
  belongs_to :cuisine
  has_and_belongs_to_many :tags
  has_many :votes
  has_many :users, through: :votes

  validates :url, presence: true
  accepts_nested_attributes_for :cuisine, :tags

  array = []

  def self.randomizer

  end

end
