class SocialSitesController < ApplicationController
  before_action :set_social_site, only: [:show, :edit, :update, :destroy]

  # GET /social_sites
  # GET /social_sites.json
  def index
    @social_sites = SocialSite.all
  end

  # GET /social_sites/1
  # GET /social_sites/1.json
  def show
  end

  # GET /social_sites/new
  def new
    @social_site = SocialSite.new
  end

  # GET /social_sites/1/edit
  def edit
  end

  # POST /social_sites
  # POST /social_sites.json
  def create
    @social_site = SocialSite.new(social_site_params)

    respond_to do |format|
      if @social_site.save
        format.html { redirect_to @social_site, notice: 'Social site was successfully created.' }
        format.json { render action: 'show', status: :created, location: @social_site }
      else
        format.html { render action: 'new' }
        format.json { render json: @social_site.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_sites/1
  # PATCH/PUT /social_sites/1.json
  def update
    respond_to do |format|
      if @social_site.update(social_site_params)
        format.html { redirect_to @social_site, notice: 'Social site was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @social_site.errors, status: :unprocessable_entity }
      end
    end
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
      @social_site = SocialSite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def social_site_params
      params.require(:social_site).permit(:name, :api_token, :user_identifier, :user_id)
    end
end
