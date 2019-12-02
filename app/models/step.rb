class Step < ApplicationRecord
  has_one_attached :avatar
  mount_uploader :avatar, AvatarUploader
  belongs_to :wiki
end
