class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :description
      t.string :tag
      t.string :video_file
      t.string :thumb_file

      t.timestamps
    end
  end
end
