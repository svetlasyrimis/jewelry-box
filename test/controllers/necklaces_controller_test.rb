require 'test_helper'

class NecklacesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @necklace = necklaces(:one)
  end

  test "should get index" do
    get necklaces_url, as: :json
    assert_response :success
  end

  test "should create necklace" do
    assert_difference('Necklace.count') do
      post necklaces_url, params: { necklace: { color: @necklace.color, description: @necklace.description, img_url: @necklace.img_url, item: @necklace.item, material: @necklace.material, notes: @necklace.notes, value: @necklace.value } }, as: :json
    end

    assert_response 201
  end

  test "should show necklace" do
    get necklace_url(@necklace), as: :json
    assert_response :success
  end

  test "should update necklace" do
    patch necklace_url(@necklace), params: { necklace: { color: @necklace.color, description: @necklace.description, img_url: @necklace.img_url, item: @necklace.item, material: @necklace.material, notes: @necklace.notes, value: @necklace.value } }, as: :json
    assert_response 200
  end

  test "should destroy necklace" do
    assert_difference('Necklace.count', -1) do
      delete necklace_url(@necklace), as: :json
    end

    assert_response 204
  end
end
