class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }

  validates :email, uniqueness: true
  validates :first_name, :last_name, :address, presence: true

# Mounting Uploader for ProfilePic

  mount_uploader :profile_pic, ProfilePicUploader


# adding geolocation

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  # everytime we add a restaurant we want to geocode it. User.near("220 King Street")


  has_many :votes
  has_many :pictures, through: :votes
  has_many :tags, through: :pictures
  has_many :cuisines, through: :pictures
  has_many :sent_invitations, class_name: 'Invitation', foreign_key: :send_user_id
  has_many :accepted_invitations, class_name: 'Invitation', foreign_key: :accept_user_id

  def top_cats
    category_arr = []
    pics = self.pictures


    pics.each do |pic|
      cat = pic.cuisine
      category_arr << cat.name
    end
    category_arr

    cat_hash = Hash.new(0)

    category_arr.each do |key|
      cat_hash[key] += 1
    end

    cat_hash.sort_by {|k,v| v}.reverse.take(3)
  end

  def top_tags
    tag_arr = []
    pics = self.pictures


    pics.each do |pic|
      tag = pic.tags
      tag.each do |i|
        tag_arr << i.name
      end
    end
    tag_arr

    tag_hash = Hash.new(0)

    tag_arr.each do |key|
      tag_hash[key] += 1
    end

    tag_hash.sort_by {|k,v| v}.reverse.take(4)
  end



end
