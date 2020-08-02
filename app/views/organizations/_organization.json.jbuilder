json.extract! organization, :id, :display_name, :legal_name, :url, :department, :street_address, :city, :neighbourhood, :postal_code, :region, :country, :requires_identification, :operating_countries, :custom_identifier, :identifiers, :generic_url, :generic_email, :generic_note, :access_url, :access_email, :access_note, :deletion_url, :deletion_email, :deletion_note, :portability_url, :portability_email, :portability_note, :correction_url, :correction_email, :correction_note, :created_at, :updated_at
json.url organization_url(organization, format: :json)
