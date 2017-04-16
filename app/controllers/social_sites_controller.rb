class SocialSitesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_social_site, only: [:show, :destroy]
  # GET /social_sites
  # GET /social_sites.json
  def index
    @social_sites = current_user.social_sites
  end

  # GET /social_sites/1
  # GET /social_sites/1.json
  def show
  end

  # DELETE /social_sites/1
  # DELETE /social_sites/1.json
  def destroy
    @social_site.destroy
    respond_to do |format|
      format.html { redirect_to social_sites_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_site
      @social_site = SocialSite.where(id: params[:id], user_id: current_user.id).first
    end

end
