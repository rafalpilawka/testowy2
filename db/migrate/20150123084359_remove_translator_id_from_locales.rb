class RemoveTranslatorIdFromLocales < ActiveRecord::Migration
  def change
    remove_column :locales, :trasnlator_id, :integer
  end
end
