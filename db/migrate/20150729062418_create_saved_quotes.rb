class CreateSavedQuotes < ActiveRecord::Migration
  def change
    create_table :saved_quotes do |t|
      t.references :user, index: true, foreign_key: true
      t.references :quote, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
