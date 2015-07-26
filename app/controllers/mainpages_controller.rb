class MainpagesController < ApplicationController

  def index
    @quotes = Quote.all
    @quote = Quote.new
  end
end
