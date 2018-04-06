class Page < ApplicationRecord
  belongs_to :profile

  mount_uploader :image, PageUploader

  LABEL_TYPES = ["Keepers", "Traders", "ISO"]
end
