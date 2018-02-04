require 'test_helper'

class LoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loard = loards(:one)
  end

  test "should get index" do
    get loards_url
    assert_response :success
  end

  test "should get new" do
    get new_loard_url
    assert_response :success
  end

  test "should create loard" do
    assert_difference('Loard.count') do
      post loards_url, params: { loard: { bio: @loard.bio, birth: @loard.birth, name: @loard.name } }
    end

    assert_redirected_to loard_url(Loard.last)
  end

  test "should show loard" do
    get loard_url(@loard)
    assert_response :success
  end

  test "should get edit" do
    get edit_loard_url(@loard)
    assert_response :success
  end

  test "should update loard" do
    patch loard_url(@loard), params: { loard: { bio: @loard.bio, birth: @loard.birth, name: @loard.name } }
    assert_redirected_to loard_url(@loard)
  end

  test "should destroy loard" do
    assert_difference('Loard.count', -1) do
      delete loard_url(@loard)
    end

    assert_redirected_to loards_url
  end
end
