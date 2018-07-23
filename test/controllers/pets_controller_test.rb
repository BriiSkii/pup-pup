require 'test_helper'

class PetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pets_index_url
    assert_response :success
  end

  test "should get new" do
    get pets_new_url
    assert_response :success
  end

  test "should get create" do
    get pets_create_url
    assert_response :success
  end

  test "should get name" do
    get pets_name_url
    assert_response :success
  end

  test "should get description" do
    get pets_description_url
    assert_response :success
  end

  test "should get photo_upload" do
    get pets_photo_upload_url
    assert_response :success
  end

  test "should get location" do
    get pets_location_url
    assert_response :success
  end

  test "should get update" do
    get pets_update_url
    assert_response :success
  end

end
