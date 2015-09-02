class Route < ActiveRecord::Base
  mount_uploader :pathCameraLeft, VideoUploader
  mount_uploader :pathCameraRight, VideoUploader
  mount_uploader :pathCameraMiddle, VideoUploader
  mount_uploader :pathGPS, VideoUploader

  validates :name, presence: true
end
