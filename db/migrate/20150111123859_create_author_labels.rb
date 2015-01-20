class CreateAuthorLabels < ActiveRecord::Migration
  def change
    create_table :author_labels do |t|
      t.integer :author_id
      t.integer :label_id

      t.timestamps
    end
  end
end
