require 'test_helper'

class FundingPagesControllerTest < ActionController::TestCase
  setup do
    @funding_page = funding_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funding_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funding_page" do
    assert_difference('FundingPage.count') do
      post :create, funding_page: { description: @funding_page.description, title: @funding_page.title, user_id: @funding_page.user_id }
    end

    assert_redirected_to funding_page_path(assigns(:funding_page))
  end

  test "should show funding_page" do
    get :show, id: @funding_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funding_page
    assert_response :success
  end

  test "should update funding_page" do
    put :update, id: @funding_page, funding_page: { description: @funding_page.description, title: @funding_page.title, user_id: @funding_page.user_id }
    assert_redirected_to funding_page_path(assigns(:funding_page))
  end

  test "should destroy funding_page" do
    assert_difference('FundingPage.count', -1) do
      delete :destroy, id: @funding_page
    end

    assert_redirected_to funding_pages_path
  end
end
