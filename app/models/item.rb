class Item < ApplicationRecord
    has_one_attached :avatar    
    mount_uploader :avatar, AvatarUploader
end
