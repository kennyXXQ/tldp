require 'test_helper'

class RoutesControllerTest < ActionController::TestCase
  setup do
    @route = routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create route" do
    assert_difference('Route.count') do
      post :create, route: { createDate: @route.createDate, description: @route.description, driveDate: @route.driveDate, indexId: @route.indexId, keyword: @route.keyword, name: @route.name, pathCameraLeft: @route.pathCameraLeft, pathCameraMiddle: @route.pathCameraMiddle, pathCameraRight: @route.pathCameraRight, pathGPS: @route.pathGPS, recorder: @route.recorder, region: @route.region, regionId: @route.regionId, routeDistance: @route.routeDistance, routeTime: @route.routeTime, uploader: @route.uploader }
    end

    assert_redirected_to route_path(assigns(:route))
  end

  test "should show route" do
    get :show, id: @route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @route
    assert_response :success
  end

  test "should update route" do
    patch :update, id: @route, route: { createDate: @route.createDate, description: @route.description, driveDate: @route.driveDate, indexId: @route.indexId, keyword: @route.keyword, name: @route.name, pathCameraLeft: @route.pathCameraLeft, pathCameraMiddle: @route.pathCameraMiddle, pathCameraRight: @route.pathCameraRight, pathGPS: @route.pathGPS, recorder: @route.recorder, region: @route.region, regionId: @route.regionId, routeDistance: @route.routeDistance, routeTime: @route.routeTime, uploader: @route.uploader }
    assert_redirected_to route_path(assigns(:route))
  end

  test "should destroy route" do
    assert_difference('Route.count', -1) do
      delete :destroy, id: @route
    end

    assert_redirected_to routes_path
  end
end
