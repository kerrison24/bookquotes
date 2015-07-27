class Quote < ActiveRecord::Base
  validates :quote_string, :book_title, :book_author, presence: true
  
end
