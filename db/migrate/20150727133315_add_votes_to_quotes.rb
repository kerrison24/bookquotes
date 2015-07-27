class AddVotesToQuotes < ActiveRecord::Migration
  def change
    add_column :quotes, :vote_count, :integer, default: 0
  end
end
