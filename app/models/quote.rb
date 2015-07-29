class Quote < ActiveRecord::Base
  has_many :saved_quotes
  validates :quote_string, :book_title, :book_author, presence: true

end
