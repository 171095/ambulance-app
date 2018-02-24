require 'test_helper'

class AmbulancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ambulance = ambulances(:one)
  end

  test "should get index" do
    get ambulances_url
    assert_response :success
  end

  test "should get new" do
    get new_ambulance_url
    assert_response :success
  end

  test "should create ambulance" do
    assert_difference('Ambulance.count') do
      post ambulances_url, params: { ambulance: { city: @ambulance.city, country: @ambulance.country, latitude: @ambulance.latitude, longitude: @ambulance.longitude, state: @ambulance.state, zipcode: @ambulance.zipcode } }
    end

    assert_redirected_to ambulance_url(Ambulance.last)
  end

  test "should show ambulance" do
    get ambulance_url(@ambulance)
    assert_response :success
  end

  test "should get edit" do
    get edit_ambulance_url(@ambulance)
    assert_response :success
  end

  test "should update ambulance" do
    patch ambulance_url(@ambulance), params: { ambulance: { city: @ambulance.city, country: @ambulance.country, latitude: @ambulance.latitude, longitude: @ambulance.longitude, state: @ambulance.state, zipcode: @ambulance.zipcode } }
    assert_redirected_to ambulance_url(@ambulance)
  end

  test "should destroy ambulance" do
    assert_difference('Ambulance.count', -1) do
      delete ambulance_url(@ambulance)
    end

    assert_redirected_to ambulances_url
  end
end
