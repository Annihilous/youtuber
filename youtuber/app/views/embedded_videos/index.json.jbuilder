json.array!(@embedded_videos) do |embedded_video|
  json.extract! embedded_video, :id, :name, :video_url, :photo_url, :color, :autoplay
  json.url embedded_video_url(embedded_video, format: :json)
end
