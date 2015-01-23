class RemoveTranslatorIdFromLocales < ActiveRecord::Migration
  def change
    remove_column :locales, :translator_id, :integer
  end
end
