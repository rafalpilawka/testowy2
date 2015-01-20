class AddLabelIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :label_id, :[]
  end
end
