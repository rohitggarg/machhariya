require 'test_helper'

class SocialSitesControllerTest < ActionController::TestCase
  setup do
    @social_site = social_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_site" do
    assert_difference('SocialSite.count') do
      post :create, social_site: { api_token: @social_site.api_token, name: @social_site.name, user_id: @social_site.user_id, user_identifier: @social_site.user_identifier }
    end

    assert_redirected_to social_site_path(assigns(:social_site))
  end

  test "should show social_site" do
    get :show, id: @social_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @social_site
    assert_response :success
  end

  test "should update social_site" do
    patch :update, id: @social_site, social_site: { api_token: @social_site.api_token, name: @social_site.name, user_id: @social_site.user_id, user_identifier: @social_site.user_identifier }
    assert_redirected_to social_site_path(assigns(:social_site))
  end

  test "should destroy social_site" do
    assert_difference('SocialSite.count', -1) do
      delete :destroy, id: @social_site
    end

    assert_redirected_to social_sites_path
  end
end
