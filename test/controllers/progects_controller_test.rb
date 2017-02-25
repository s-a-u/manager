require 'test_helper'

class ProgectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @progect = progects(:one)
  end

  test "should get index" do
    get progects_url
    assert_response :success
  end

  test "should get new" do
    get new_progect_url
    assert_response :success
  end

  test "should create progect" do
    assert_difference('Progect.count') do
      post progects_url, params: { progect: { title: @progect.title } }
    end

    assert_redirected_to progect_url(Progect.last)
  end

  test "should show progect" do
    get progect_url(@progect)
    assert_response :success
  end

  test "should get edit" do
    get edit_progect_url(@progect)
    assert_response :success
  end

  test "should update progect" do
    patch progect_url(@progect), params: { progect: { title: @progect.title } }
    assert_redirected_to progect_url(@progect)
  end

  test "should destroy progect" do
    assert_difference('Progect.count', -1) do
      delete progect_url(@progect)
    end

    assert_redirected_to progects_url
  end
end
