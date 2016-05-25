class Invitation < ActiveRecord::Base
  belongs_to :sent_user, class_name: 'User'
  belongs_to :accepted_user, class_name: 'User'
end
