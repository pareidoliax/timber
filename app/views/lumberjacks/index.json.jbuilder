json.array!(@lumberjacks) do |lumberjack|
  json.extract! lumberjack, :id, :name, :lumberjill_id, :the_one_id
  json.url lumberjack_url(lumberjack, format: :json)
end
