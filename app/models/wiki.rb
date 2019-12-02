class Wiki < ApplicationRecord
    has_one_attached :avatar    

    mount_uploader :avatar, AvatarUploader

    # validates :title, presence: true
    # validates :description, presence: true
end
