class CreateLocaleTranslators < ActiveRecord::Migration
  def change
    create_table :locale_translators do |t|
      t.integer :locale_id
      t.integer :translator_id

      t.timestamps
    end
  end
end
