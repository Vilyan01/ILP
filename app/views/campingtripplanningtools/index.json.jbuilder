json.array!(@campingtripplanningtools) do |campingtripplanningtool|
  json.extract! campingtripplanningtool, :id, :fname, :lname, :city, :state
  json.url campingtripplanningtool_url(campingtripplanningtool, format: :json)
end
