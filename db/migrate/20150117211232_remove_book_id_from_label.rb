class RemoveBookIdFromLabel < ActiveRecord::Migration
  def change
    remove_column :labels, :book_id, :integer
  end
end
