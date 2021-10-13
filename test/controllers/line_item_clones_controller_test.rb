require "test_helper"

class LineItemClonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @line_item_clone = line_item_clones(:one)
  end

  test "should get index" do
    get line_item_clones_url
    assert_response :success
  end

  test "should get new" do
    get new_line_item_clone_url
    assert_response :success
  end

  test "should create line_item_clone" do
    assert_difference('LineItemClone.count') do
      post line_item_clones_url, params: { line_item_clone: {  } }
    end

    assert_redirected_to line_item_clone_url(LineItemClone.last)
  end

  test "should show line_item_clone" do
    get line_item_clone_url(@line_item_clone)
    assert_response :success
  end

  test "should get edit" do
    get edit_line_item_clone_url(@line_item_clone)
    assert_response :success
  end

  test "should update line_item_clone" do
    patch line_item_clone_url(@line_item_clone), params: { line_item_clone: {  } }
    assert_redirected_to line_item_clone_url(@line_item_clone)
  end

  test "should destroy line_item_clone" do
    assert_difference('LineItemClone.count', -1) do
      delete line_item_clone_url(@line_item_clone)
    end

    assert_redirected_to line_item_clones_url
  end
end
