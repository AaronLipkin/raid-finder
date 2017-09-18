require 'test_helper'

class ExpansionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expansion = expansions(:one)
  end

  test "should get index" do
    get expansions_url, as: :json
    assert_response :success
  end

  test "should create expansion" do
    assert_difference('Expansion.count') do
      post expansions_url, params: { expansion: { colors: @expansion.colors, name: @expansion.name, release_order: @expansion.release_order } }, as: :json
    end

    assert_response 201
  end

  test "should show expansion" do
    get expansion_url(@expansion), as: :json
    assert_response :success
  end

  test "should update expansion" do
    patch expansion_url(@expansion), params: { expansion: { colors: @expansion.colors, name: @expansion.name, release_order: @expansion.release_order } }, as: :json
    assert_response 200
  end

  test "should destroy expansion" do
    assert_difference('Expansion.count', -1) do
      delete expansion_url(@expansion), as: :json
    end

    assert_response 204
  end
end
