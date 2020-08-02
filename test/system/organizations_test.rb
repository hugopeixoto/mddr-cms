require "application_system_test_case"

class OrganizationsTest < ApplicationSystemTestCase
  setup do
    @organization = organizations(:one)
  end

  test "visiting the index" do
    visit organizations_url
    assert_selector "h1", text: "Organizations"
  end

  test "creating a Organization" do
    visit organizations_url
    click_on "New Organization"

    fill_in "Access email", with: @organization.access_email
    fill_in "Access note", with: @organization.access_note
    fill_in "Access url", with: @organization.access_url
    fill_in "City", with: @organization.city
    fill_in "Correction email", with: @organization.correction_email
    fill_in "Correction note", with: @organization.correction_note
    fill_in "Correction url", with: @organization.correction_url
    fill_in "Country", with: @organization.country
    fill_in "Custom identifier", with: @organization.custom_identifier
    fill_in "Deletion email", with: @organization.deletion_email
    fill_in "Deletion note", with: @organization.deletion_note
    fill_in "Deletion url", with: @organization.deletion_url
    fill_in "Department", with: @organization.department
    fill_in "Display name", with: @organization.display_name
    fill_in "Generic email", with: @organization.generic_email
    fill_in "Generic note", with: @organization.generic_note
    fill_in "Generic url", with: @organization.generic_url
    fill_in "Identifiers", with: @organization.identifiers
    fill_in "Legal name", with: @organization.legal_name
    fill_in "Neighbourhood", with: @organization.neighbourhood
    fill_in "Operating countries", with: @organization.operating_countries
    fill_in "Portability email", with: @organization.portability_email
    fill_in "Portability note", with: @organization.portability_note
    fill_in "Portability url", with: @organization.portability_url
    fill_in "Postal code", with: @organization.postal_code
    fill_in "Region", with: @organization.region
    check "Requires identification" if @organization.requires_identification
    fill_in "Street address", with: @organization.street_address
    fill_in "Url", with: @organization.url
    click_on "Create Organization"

    assert_text "Organization was successfully created"
    click_on "Back"
  end

  test "updating a Organization" do
    visit organizations_url
    click_on "Edit", match: :first

    fill_in "Access email", with: @organization.access_email
    fill_in "Access note", with: @organization.access_note
    fill_in "Access url", with: @organization.access_url
    fill_in "City", with: @organization.city
    fill_in "Correction email", with: @organization.correction_email
    fill_in "Correction note", with: @organization.correction_note
    fill_in "Correction url", with: @organization.correction_url
    fill_in "Country", with: @organization.country
    fill_in "Custom identifier", with: @organization.custom_identifier
    fill_in "Deletion email", with: @organization.deletion_email
    fill_in "Deletion note", with: @organization.deletion_note
    fill_in "Deletion url", with: @organization.deletion_url
    fill_in "Department", with: @organization.department
    fill_in "Display name", with: @organization.display_name
    fill_in "Generic email", with: @organization.generic_email
    fill_in "Generic note", with: @organization.generic_note
    fill_in "Generic url", with: @organization.generic_url
    fill_in "Identifiers", with: @organization.identifiers
    fill_in "Legal name", with: @organization.legal_name
    fill_in "Neighbourhood", with: @organization.neighbourhood
    fill_in "Operating countries", with: @organization.operating_countries
    fill_in "Portability email", with: @organization.portability_email
    fill_in "Portability note", with: @organization.portability_note
    fill_in "Portability url", with: @organization.portability_url
    fill_in "Postal code", with: @organization.postal_code
    fill_in "Region", with: @organization.region
    check "Requires identification" if @organization.requires_identification
    fill_in "Street address", with: @organization.street_address
    fill_in "Url", with: @organization.url
    click_on "Update Organization"

    assert_text "Organization was successfully updated"
    click_on "Back"
  end

  test "destroying a Organization" do
    visit organizations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organization was successfully destroyed"
  end
end
