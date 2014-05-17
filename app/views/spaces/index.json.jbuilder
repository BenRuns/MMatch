json.array!(@spaces) do |space|
  json.extract! space, :id, :city, :state, :laser_cutter, :three_d_printer, :cnc_router, :sewing_maching, :microcontroller_library
  json.url space_url(space, format: :json)
end
