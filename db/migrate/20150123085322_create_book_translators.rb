class CreateBookTranslators < ActiveRecord::Migration
  def change
    create_table :book_translators do |t|
      t.integer :book_id
      t.integer :translator_id

      t.timestamps
    end
  end
end
