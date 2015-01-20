class RemoveLabelFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :label, :string
  end
end
