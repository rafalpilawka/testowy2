class AddLabelIdTo < ActiveRecord::Migration
  def change
  	add_column :books , :label_id ,:int
  end
end
