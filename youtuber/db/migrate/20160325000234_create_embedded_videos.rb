class CreateEmbeddedVideos < ActiveRecord::Migration
  def change
    create_table :embedded_videos do |t|
      t.string :name
      t.string :video_url
      t.string :photo_url
      t.string :color
      t.boolean :autoplay

      t.timestamps null: false
    end
  end
end
