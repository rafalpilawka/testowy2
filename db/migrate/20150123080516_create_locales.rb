class CreateLocales < ActiveRecord::Migration
  def change
    create_table :locales do |t|
      t.string :lang
      t.integer :book_id
      t.integer :translator_id

      t.timestamps
    end
  end
end
