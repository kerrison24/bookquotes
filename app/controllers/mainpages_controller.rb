class MainpagesController < ApplicationController

  def index
    @quotes = Quote.all.order("quotes.created_at DESC").paginate(:per_page => 10, :page => params[:page])
    @quote = Quote.new
  end
end
