class Message < ApplicationRecord
    mount_uploader :url, VideoUploader
    mount_uploader :thumbnail_url, ThumbUploader
    validates :title, presence: true
    validates :tag, presence: true    
    scope :filter_by_tag, -> (tag){ where tag: tag }
end
