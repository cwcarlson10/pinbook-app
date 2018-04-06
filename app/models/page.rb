class Page < ApplicationRecord
  belongs_to :profile

  mount_uploader :image, PageUploader
end
