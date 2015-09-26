json.array!(@homes) do |home|
  json.extract! home, :id, :title, :text, :photo_uid, :photo_name, :image_uid, :image_name, :user_id
  json.url home_url(home, format: :json)
end
