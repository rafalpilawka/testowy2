class CreateAliases < ActiveRecord::Migration
  def change
    create_table :aliases do |t|
      t.integer :author_id
      t.string :name
      t.integer :label_id

      t.timestamps
    end
  end
end
