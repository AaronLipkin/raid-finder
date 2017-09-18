require 'test_helper'

class KlassesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klass = klasses(:one)
  end

  test "should get index" do
    get klasses_url, as: :json
    assert_response :success
  end

  test "should create klass" do
    assert_difference('Klasse.count') do
      post klasses_url, params: { klass: { name: @klass.name } }, as: :json
    end

    assert_response 201
  end

  test "should show klass" do
    get klass_url(@klass), as: :json
    assert_response :success
  end

  test "should update klass" do
    patch klass_url(@klass), params: { klass: { name: @klass.name } }, as: :json
    assert_response 200
  end

  test "should destroy klass" do
    assert_difference('Klasse.count', -1) do
      delete klass_url(@klass), as: :json
    end

    assert_response 204
  end
end
