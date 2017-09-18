require 'test_helper'

class SpecsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spec = specs(:one)
  end

  test "should get index" do
    get specs_url, as: :json
    assert_response :success
  end

  test "should create spec" do
    assert_difference('Spec.count') do
      post specs_url, params: { spec: { class_id: @spec.class_id, name: @spec.name, role: @spec.role } }, as: :json
    end

    assert_response 201
  end

  test "should show spec" do
    get spec_url(@spec), as: :json
    assert_response :success
  end

  test "should update spec" do
    patch spec_url(@spec), params: { spec: { class_id: @spec.class_id, name: @spec.name, role: @spec.role } }, as: :json
    assert_response 200
  end

  test "should destroy spec" do
    assert_difference('Spec.count', -1) do
      delete spec_url(@spec), as: :json
    end

    assert_response 204
  end
end
