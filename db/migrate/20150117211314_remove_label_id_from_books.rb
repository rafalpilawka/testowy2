class RemoveLabelIdFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :label_id, :integer
  end
end
