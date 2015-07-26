class FixColumnNameAgain < ActiveRecord::Migration
  def change
    rename_column :quotes, :quote, :quote_string
  end
end
