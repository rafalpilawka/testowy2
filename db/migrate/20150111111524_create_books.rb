class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :author
      t.string :label
      t.float :price
      t.integer :pages
      t.timestamps
    end
  end
end
