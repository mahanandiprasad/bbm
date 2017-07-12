require 'test_helper'

class ChildSubCategoriesControllerTest < ActionController::TestCase
  setup do
    @child_sub_category = child_sub_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:child_sub_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create child_sub_category" do
    assert_difference('ChildSubCategory.count') do
      post :create, child_sub_category: { category_id: @child_sub_category.category_id, descriptions: @child_sub_category.descriptions, name: @child_sub_category.name, slug: @child_sub_category.slug, subcategory_id: @child_sub_category.subcategory_id }
    end

    assert_redirected_to child_sub_category_path(assigns(:child_sub_category))
  end

  test "should show child_sub_category" do
    get :show, id: @child_sub_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @child_sub_category
    assert_response :success
  end

  test "should update child_sub_category" do
    patch :update, id: @child_sub_category, child_sub_category: { category_id: @child_sub_category.category_id, descriptions: @child_sub_category.descriptions, name: @child_sub_category.name, slug: @child_sub_category.slug, subcategory_id: @child_sub_category.subcategory_id }
    assert_redirected_to child_sub_category_path(assigns(:child_sub_category))
  end

  test "should destroy child_sub_category" do
    assert_difference('ChildSubCategory.count', -1) do
      delete :destroy, id: @child_sub_category
    end

    assert_redirected_to child_sub_categories_path
  end
end
