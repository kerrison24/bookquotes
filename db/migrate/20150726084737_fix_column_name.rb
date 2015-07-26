class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :quotes, :passage, :quote
  end
end
