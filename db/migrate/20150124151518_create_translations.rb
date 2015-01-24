class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.integer :book_id
      t.integer :translator_id
      t.date :date
      t.string :language

      t.timestamps
    end
  end
end
