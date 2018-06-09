class Profile < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  has_many   :pages
  
  delegate :email, to: :user

  def user_name
    first_name + " " + last_name
  end
end
