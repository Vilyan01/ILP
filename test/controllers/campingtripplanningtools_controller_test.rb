require 'test_helper'

class CampingtripplanningtoolsControllerTest < ActionController::TestCase
  setup do
    @campingtripplanningtool = campingtripplanningtools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:campingtripplanningtools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create campingtripplanningtool" do
    assert_difference('Campingtripplanningtool.count') do
      post :create, campingtripplanningtool: { city: @campingtripplanningtool.city, fname: @campingtripplanningtool.fname, lname: @campingtripplanningtool.lname, state: @campingtripplanningtool.state }
    end

    assert_redirected_to campingtripplanningtool_path(assigns(:campingtripplanningtool))
  end

  test "should show campingtripplanningtool" do
    get :show, id: @campingtripplanningtool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @campingtripplanningtool
    assert_response :success
  end

  test "should update campingtripplanningtool" do
    patch :update, id: @campingtripplanningtool, campingtripplanningtool: { city: @campingtripplanningtool.city, fname: @campingtripplanningtool.fname, lname: @campingtripplanningtool.lname, state: @campingtripplanningtool.state }
    assert_redirected_to campingtripplanningtool_path(assigns(:campingtripplanningtool))
  end

  test "should destroy campingtripplanningtool" do
    assert_difference('Campingtripplanningtool.count', -1) do
      delete :destroy, id: @campingtripplanningtool
    end

    assert_redirected_to campingtripplanningtools_path
  end
end
