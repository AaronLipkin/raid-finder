require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url, as: :json
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { armory: @character.armory, class: @character.class, item_level: @character.item_level, name: @character.name, primary_spec: @character.primary_spec, server: @character.server, user: @character.user } }, as: :json
    end

    assert_response 201
  end

  test "should show character" do
    get character_url(@character), as: :json
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { armory: @character.armory, class: @character.class, item_level: @character.item_level, name: @character.name, primary_spec: @character.primary_spec, server: @character.server, user: @character.user } }, as: :json
    assert_response 200
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character), as: :json
    end

    assert_response 204
  end
end
