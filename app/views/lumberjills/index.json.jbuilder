json.array!(@lumberjills) do |lumberjill|
  json.extract! lumberjill, :id, :name, :lumberjack_id, :the_one_id
  json.url lumberjill_url(lumberjill, format: :json)
end
