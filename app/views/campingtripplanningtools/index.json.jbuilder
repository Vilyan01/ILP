json.array!(@campingtripplanningtools) do |campingtripplanningtool|
  json.extract! campingtripplanningtool, :id, :fname, :lname, :city, :state, :latitude, :longitude, :gmaps
  json.url campingtripplanningtool_url(campingtripplanningtool, format: :json)
end
