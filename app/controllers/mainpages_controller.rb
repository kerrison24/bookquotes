class MainpagesController < ApplicationController

  def index
    @quotes = Quote.all.order("quotes.created_at DESC")
    @quote = Quote.new
  end
end
