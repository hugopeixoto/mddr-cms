class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.text :display_name
      t.text :legal_name
      t.string :url
      t.string :department
      t.string :street_address
      t.string :city
      t.string :neighbourhood
      t.string :postal_code
      t.string :region
      t.string :country
      t.boolean :requires_identification
      t.text :operating_countries
      t.string :custom_identifier
      t.text :identifiers
      t.string :generic_url
      t.string :generic_email
      t.text :generic_note
      t.string :access_url
      t.string :access_email
      t.text :access_note
      t.string :deletion_url
      t.string :deletion_email
      t.text :deletion_note
      t.string :portability_url
      t.string :portability_email
      t.text :portability_note
      t.string :correction_url
      t.string :correction_email
      t.text :correction_note

      t.timestamps
    end
  end
end
