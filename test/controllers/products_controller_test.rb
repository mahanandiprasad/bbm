require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { description: @product.description, discount_price: @product.discount_price, max_order: @product.max_order, min_order: @product.min_order, name: @product.name, original_price: @product.original_price, sku: @product.sku, tax_applied: @product.tax_applied, terms_condition: @product.terms_condition, weight: @product.weight }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    patch :update, id: @product, product: { description: @product.description, discount_price: @product.discount_price, max_order: @product.max_order, min_order: @product.min_order, name: @product.name, original_price: @product.original_price, sku: @product.sku, tax_applied: @product.tax_applied, terms_condition: @product.terms_condition, weight: @product.weight }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end