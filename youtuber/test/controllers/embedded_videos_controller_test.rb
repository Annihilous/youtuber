require 'test_helper'

class EmbeddedVideosControllerTest < ActionController::TestCase
  setup do
    @embedded_video = embedded_videos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:embedded_videos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create embedded_video" do
    assert_difference('EmbeddedVideo.count') do
      post :create, embedded_video: { autoplay: @embedded_video.autoplay, color: @embedded_video.color, name: @embedded_video.name, photo_url: @embedded_video.photo_url, video_url: @embedded_video.video_url }
    end

    assert_redirected_to embedded_video_path(assigns(:embedded_video))
  end

  test "should show embedded_video" do
    get :show, id: @embedded_video
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @embedded_video
    assert_response :success
  end

  test "should update embedded_video" do
    patch :update, id: @embedded_video, embedded_video: { autoplay: @embedded_video.autoplay, color: @embedded_video.color, name: @embedded_video.name, photo_url: @embedded_video.photo_url, video_url: @embedded_video.video_url }
    assert_redirected_to embedded_video_path(assigns(:embedded_video))
  end

  test "should destroy embedded_video" do
    assert_difference('EmbeddedVideo.count', -1) do
      delete :destroy, id: @embedded_video
    end

    assert_redirected_to embedded_videos_path
  end
end
