class RemoveBookIdFromLocales < ActiveRecord::Migration
  def change
    remove_column :locales, :book_id, :integer
  end
end
