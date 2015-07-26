class Quote < ActiveRecord::Base
  validates :passage, presence: true
end
