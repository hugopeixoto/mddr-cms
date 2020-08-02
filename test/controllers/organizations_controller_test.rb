require 'test_helper'

class OrganizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organization = organizations(:one)
  end

  test "should get index" do
    get organizations_url
    assert_response :success
  end

  test "should get new" do
    get new_organization_url
    assert_response :success
  end

  test "should create organization" do
    assert_difference('Organization.count') do
      post organizations_url, params: { organization: { access_email: @organization.access_email, access_note: @organization.access_note, access_url: @organization.access_url, city: @organization.city, correction_email: @organization.correction_email, correction_note: @organization.correction_note, correction_url: @organization.correction_url, country: @organization.country, custom_identifier: @organization.custom_identifier, deletion_email: @organization.deletion_email, deletion_note: @organization.deletion_note, deletion_url: @organization.deletion_url, department: @organization.department, display_name: @organization.display_name, generic_email: @organization.generic_email, generic_note: @organization.generic_note, generic_url: @organization.generic_url, identifiers: @organization.identifiers, legal_name: @organization.legal_name, neighbourhood: @organization.neighbourhood, operating_countries: @organization.operating_countries, portability_email: @organization.portability_email, portability_note: @organization.portability_note, portability_url: @organization.portability_url, postal_code: @organization.postal_code, region: @organization.region, requires_identification: @organization.requires_identification, street_address: @organization.street_address, url: @organization.url } }
    end

    assert_redirected_to organization_url(Organization.last)
  end

  test "should show organization" do
    get organization_url(@organization)
    assert_response :success
  end

  test "should get edit" do
    get edit_organization_url(@organization)
    assert_response :success
  end

  test "should update organization" do
    patch organization_url(@organization), params: { organization: { access_email: @organization.access_email, access_note: @organization.access_note, access_url: @organization.access_url, city: @organization.city, correction_email: @organization.correction_email, correction_note: @organization.correction_note, correction_url: @organization.correction_url, country: @organization.country, custom_identifier: @organization.custom_identifier, deletion_email: @organization.deletion_email, deletion_note: @organization.deletion_note, deletion_url: @organization.deletion_url, department: @organization.department, display_name: @organization.display_name, generic_email: @organization.generic_email, generic_note: @organization.generic_note, generic_url: @organization.generic_url, identifiers: @organization.identifiers, legal_name: @organization.legal_name, neighbourhood: @organization.neighbourhood, operating_countries: @organization.operating_countries, portability_email: @organization.portability_email, portability_note: @organization.portability_note, portability_url: @organization.portability_url, postal_code: @organization.postal_code, region: @organization.region, requires_identification: @organization.requires_identification, street_address: @organization.street_address, url: @organization.url } }
    assert_redirected_to organization_url(@organization)
  end

  test "should destroy organization" do
    assert_difference('Organization.count', -1) do
      delete organization_url(@organization)
    end

    assert_redirected_to organizations_url
  end
end
