class AddIndustryToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :industry, :string
  end
end
