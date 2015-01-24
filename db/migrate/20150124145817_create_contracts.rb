class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.integer :book_id
      t.integer :label_id
      t.date :date

      t.timestamps
    end
  end
end
