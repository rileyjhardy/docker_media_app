class ChangeVideoUrlToUrl < ActiveRecord::Migration[6.1]
  def change
    rename_column :messages, :video_file, :url
  end
end
