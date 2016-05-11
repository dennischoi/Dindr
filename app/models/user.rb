class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
  validates :first_name, :last_name, :address, presence: true

  has_many :pictures
  has_many :tags, through: :pictures
  has_many :cuisines, through: :pictures
  has_many :pictures_votes, through: :votes, class_name: "Pictures"
end
