json.array!(@routes) do |route|
  json.extract! route, :id, :name, :description, :createDate, :driveDate, :indexId, :region, :regionId, :routeDistance, :routeTime, :uploader, :recorder, :keyword, :pathCameraLeft, :pathCameraMiddle, :pathCameraRight, :pathGPS
  json.url route_url(route, format: :json)
end
