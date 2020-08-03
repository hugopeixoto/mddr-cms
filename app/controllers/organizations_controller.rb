class OrganizationsController < ApplicationController
  before_action :set_organization, only: [:show, :edit, :update, :destroy, :confirm_deletion]
  before_action :check_auth

  def check_auth
    if cookies[:auth].blank? || cookies[:password] != ENV["PASSWORD"]
      redirect_to root_path
    end
  end

  # GET /organizations
  # GET /organizations.json
  def index
    @organizations = Organization.all.order(:industry)
  end

  # GET /organizations/1
  # GET /organizations/1.json
  def show
  end

  # GET /organizations/new
  def new
    @organization = Organization.new
  end

  # GET /organizations/1/edit
  def edit
  end

  # POST /organizations
  # POST /organizations.json
  def create
    @organization = Organization.new(organization_params.merge(
      author_name: cookies[:name],
      author_auth: cookies[:auth],
    ))

    respond_to do |format|
      if @organization.save
        format.html { redirect_to organizations_path }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /organizations/1
  # PATCH/PUT /organizations/1.json
  def update
    respond_to do |format|
      if @organization.update(organization_params)
        format.html { redirect_to organizations_path }
      else
        format.html { render :edit }
      end
    end
  end

  def confirm_deletion
  end

  # DELETE /organizations/1
  # DELETE /organizations/1.json
  def destroy
    @organization.destroy
    respond_to do |format|
      format.html { redirect_to organizations_url, notice: 'Organization was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_organization
      @organization = Organization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def organization_params
      params.require(:organization).permit(:display_name, :legal_name, :url, :department, :street_address, :city, :neighbourhood, :postal_code, :region, :country, :requires_identification, :operating_countries, :custom_identifier, :identifiers, :generic_url, :generic_email, :generic_note, :access_url, :access_email, :access_note, :deletion_url, :deletion_email, :deletion_note, :portability_url, :portability_email, :portability_note, :correction_url, :correction_email, :correction_note, :industry)
    end
end
