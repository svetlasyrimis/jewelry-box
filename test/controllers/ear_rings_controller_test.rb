require 'test_helper'

class EarRingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ear_ring = ear_rings(:one)
  end

  test "should get index" do
    get ear_rings_url, as: :json
    assert_response :success
  end

  test "should create ear_ring" do
    assert_difference('EarRing.count') do
      post ear_rings_url, params: { ear_ring: { color: @ear_ring.color, description: @ear_ring.description, img_url: @ear_ring.img_url, item: @ear_ring.item, material: @ear_ring.material, notes: @ear_ring.notes, value: @ear_ring.value } }, as: :json
    end

    assert_response 201
  end

  test "should show ear_ring" do
    get ear_ring_url(@ear_ring), as: :json
    assert_response :success
  end

  test "should update ear_ring" do
    patch ear_ring_url(@ear_ring), params: { ear_ring: { color: @ear_ring.color, description: @ear_ring.description, img_url: @ear_ring.img_url, item: @ear_ring.item, material: @ear_ring.material, notes: @ear_ring.notes, value: @ear_ring.value } }, as: :json
    assert_response 200
  end

  test "should destroy ear_ring" do
    assert_difference('EarRing.count', -1) do
      delete ear_ring_url(@ear_ring), as: :json
    end

    assert_response 204
  end
end
