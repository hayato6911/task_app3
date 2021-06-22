class Room < ApplicationRecord
 mount_uploader :room_image, ImageUploader
 
 has_many :resevations
 belongs_to :user, optional: true
end
