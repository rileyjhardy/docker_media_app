class Message < ApplicationRecord
    mount_uploader :video_file, VideoUploader
    mount_uploader :thumb_file, ThumbUploader
    validates :title, presence: true
    validates :tag, presence: true
       
    scope :filter_by_tag, -> (tag){ where tag: tag }
end
