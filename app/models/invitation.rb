class Invitation < ActiveRecord::Base
  belongs_to :send_user, class_name: 'User'
  belongs_to :accept_user, class_name: 'User'
end
