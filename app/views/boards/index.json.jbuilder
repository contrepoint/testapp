json.array!(@boards) do |board|
  json.extract! board, :id, :state
  json.url board_url(board, format: :json)
end
