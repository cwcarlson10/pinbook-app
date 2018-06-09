class Profile < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :user
  has_many   :pages
  
  delegate :email, to: :user
end
