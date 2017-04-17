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
  
  test "should show social_site" do
    get :show, params: {id: @social_site}
    assert_response :success
  end

  test "should destroy social_site" do
    assert_difference('SocialSite.count', -1) do
      delete :destroy, params: {id: @social_site}
    end

    assert_redirected_to social_sites_path
  end
end
