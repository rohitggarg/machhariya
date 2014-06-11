class RssFeedSubscriptionsController < ApplicationController
  before_action :set_rss_feed_subscription, only: [:show, :edit, :update, :destroy]

  # GET /rss_feed_subscriptions
  # GET /rss_feed_subscriptions.json
  def index
    @rss_feed_subscriptions = RssFeedSubscription.all
  end

  # GET /rss_feed_subscriptions/1
  # GET /rss_feed_subscriptions/1.json
  def show
  end

  # GET /rss_feed_subscriptions/new
  def new
    @rss_feed_subscription = RssFeedSubscription.new
  end

  # GET /rss_feed_subscriptions/1/edit
  def edit
  end

  # POST /rss_feed_subscriptions
  # POST /rss_feed_subscriptions.json
  def create
    @rss_feed_subscription = RssFeedSubscription.new(rss_feed_subscription_params)

    respond_to do |format|
      if @rss_feed_subscription.save
        format.html { redirect_to @rss_feed_subscription, notice: 'Rss feed subscription was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rss_feed_subscription }
      else
        format.html { render action: 'new' }
        format.json { render json: @rss_feed_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rss_feed_subscriptions/1
  # PATCH/PUT /rss_feed_subscriptions/1.json
  def update
    respond_to do |format|
      if @rss_feed_subscription.update(rss_feed_subscription_params)
        format.html { redirect_to @rss_feed_subscription, notice: 'Rss feed subscription was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rss_feed_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rss_feed_subscriptions/1
  # DELETE /rss_feed_subscriptions/1.json
  def destroy
    @rss_feed_subscription.destroy
    respond_to do |format|
      format.html { redirect_to rss_feed_subscriptions_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rss_feed_subscription
      @rss_feed_subscription = RssFeedSubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rss_feed_subscription_params
      params.require(:rss_feed_subscription).permit(:user_id, :rss_feed_id)
    end
end
