class AddCountryToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :country, :string
  end
end
