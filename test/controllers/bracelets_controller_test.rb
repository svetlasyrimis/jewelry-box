require 'test_helper'

class BraceletsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bracelet = bracelets(:one)
  end

  test "should get index" do
    get bracelets_url, as: :json
    assert_response :success
  end

  test "should create bracelet" do
    assert_difference('Bracelet.count') do
      post bracelets_url, params: { bracelet: { color: @bracelet.color, description: @bracelet.description, img_url: @bracelet.img_url, item: @bracelet.item, material: @bracelet.material, notes: @bracelet.notes, value: @bracelet.value } }, as: :json
    end

    assert_response 201
  end

  test "should show bracelet" do
    get bracelet_url(@bracelet), as: :json
    assert_response :success
  end

  test "should update bracelet" do
    patch bracelet_url(@bracelet), params: { bracelet: { color: @bracelet.color, description: @bracelet.description, img_url: @bracelet.img_url, item: @bracelet.item, material: @bracelet.material, notes: @bracelet.notes, value: @bracelet.value } }, as: :json
    assert_response 200
  end

  test "should destroy bracelet" do
    assert_difference('Bracelet.count', -1) do
      delete bracelet_url(@bracelet), as: :json
    end

    assert_response 204
  end
end
