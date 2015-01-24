class AddTranslatorIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :translator_id, :integer
  end
end
