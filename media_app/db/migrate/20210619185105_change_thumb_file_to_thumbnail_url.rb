class ChangeThumbFileToThumbnailUrl < ActiveRecord::Migration[6.1]
  def change
    rename_column :messages, :thumb_file, :thumbnail_url
  end
end
