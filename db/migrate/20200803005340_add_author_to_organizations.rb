class AddAuthorToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :author_name, :string
    add_column :organizations, :author_auth, :string
  end
end
