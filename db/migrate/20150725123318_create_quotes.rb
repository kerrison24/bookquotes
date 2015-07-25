class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :passage
      t.string :book_author
      t.string :book_title

      t.timestamps null: false
    end
  end
end
