require 'test_helper'

class RingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ring = rings(:one)
  end

  test "should get index" do
    get rings_url, as: :json
    assert_response :success
  end

  test "should create ring" do
    assert_difference('Ring.count') do
      post rings_url, params: { ring: { color: @ring.color, description: @ring.description, img_url: @ring.img_url, item: @ring.item, material: @ring.material, notes: @ring.notes, value: @ring.value } }, as: :json
    end

    assert_response 201
  end

  test "should show ring" do
    get ring_url(@ring), as: :json
    assert_response :success
  end

  test "should update ring" do
    patch ring_url(@ring), params: { ring: { color: @ring.color, description: @ring.description, img_url: @ring.img_url, item: @ring.item, material: @ring.material, notes: @ring.notes, value: @ring.value } }, as: :json
    assert_response 200
  end

  test "should destroy ring" do
    assert_difference('Ring.count', -1) do
      delete ring_url(@ring), as: :json
    end

    assert_response 204
  end
end
