class Personal < ApplicationRecord
  belongs_to :user
  mount_uploader :profile_image, ImageUploader
end
