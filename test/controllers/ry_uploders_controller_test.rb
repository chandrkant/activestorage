require 'test_helper'

class RyUplodersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ry_uploder = ry_uploders(:one)
  end

  test "should get index" do
    get ry_uploders_url
    assert_response :success
  end

  test "should get new" do
    get new_ry_uploder_url
    assert_response :success
  end

  test "should create ry_uploder" do
    assert_difference('RyUploder.count') do
      post ry_uploders_url, params: { ry_uploder: { desc: @ry_uploder.desc, title: @ry_uploder.title } }
    end

    assert_redirected_to ry_uploder_url(RyUploder.last)
  end

  test "should show ry_uploder" do
    get ry_uploder_url(@ry_uploder)
    assert_response :success
  end

  test "should get edit" do
    get edit_ry_uploder_url(@ry_uploder)
    assert_response :success
  end

  test "should update ry_uploder" do
    patch ry_uploder_url(@ry_uploder), params: { ry_uploder: { desc: @ry_uploder.desc, title: @ry_uploder.title } }
    assert_redirected_to ry_uploder_url(@ry_uploder)
  end

  test "should destroy ry_uploder" do
    assert_difference('RyUploder.count', -1) do
      delete ry_uploder_url(@ry_uploder)
    end

    assert_redirected_to ry_uploders_url
  end
end
