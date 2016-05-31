class Invitation < ActiveRecord::Base
  belongs_to :send_user, class_name: 'User'
  belongs_to :accepted_user, class_name: 'User'

  validate :same_date

  def same_date
    user = self.send_user
    a = user.sent_invitations
    b = user.accepted_invitations

    inv_arr = a + b
    # binding.pry

    inv_arr.each do |inv|
      if self.send_user_id == inv.send_user_id && self.accept_user_id == inv.accept_user_id
        errors.add(:sent_user, "you've already matched!")
      end
    end
  end
end
