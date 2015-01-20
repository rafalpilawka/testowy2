class AddBookIdToLabels < ActiveRecord::Migration
  def change
    add_column :labels, :book_id, :integer
  end
end
