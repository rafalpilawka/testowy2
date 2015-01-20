class CreateBooksLabels < ActiveRecord::Migration
  def change
    create_table :books_labels do |t|
      t.integer :book_id
      t.integer :label_id

      t.timestamps
    end
  end
end
