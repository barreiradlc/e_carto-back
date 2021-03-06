class Wiki < ApplicationRecord
    has_one_attached :avatar    
    has_many :steps, dependent: :destroy
    has_many :material

    mount_uploader :avatar, AvatarUploader

    # validates :title, presence: true
    # validates :description, presence: true
end
