require 'test_helper'

class RssFeedSubscriptionsControllerTest < ActionController::TestCase
  setup do
    @rss_feed_subscription = rss_feed_subscriptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rss_feed_subscriptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rss_feed_subscription" do
    assert_difference('RssFeedSubscription.count') do
      post :create, rss_feed_subscription: { rss_feed_id: @rss_feed_subscription.rss_feed_id, user_id: @rss_feed_subscription.user_id }
    end

    assert_redirected_to rss_feed_subscription_path(assigns(:rss_feed_subscription))
  end

  test "should show rss_feed_subscription" do
    get :show, id: @rss_feed_subscription
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rss_feed_subscription
    assert_response :success
  end

  test "should update rss_feed_subscription" do
    patch :update, id: @rss_feed_subscription, rss_feed_subscription: { rss_feed_id: @rss_feed_subscription.rss_feed_id, user_id: @rss_feed_subscription.user_id }
    assert_redirected_to rss_feed_subscription_path(assigns(:rss_feed_subscription))
  end

  test "should destroy rss_feed_subscription" do
    assert_difference('RssFeedSubscription.count', -1) do
      delete :destroy, id: @rss_feed_subscription
    end

    assert_redirected_to rss_feed_subscriptions_path
  end
end
