class QuotesController < ApplicationController
  def index
    @quotes = Quote.all.order("quotes.created_at DESC")
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(quote_params)
    if @quote.save
      redirect_to root_url
    else
      flash[:quote_errors] = @quote.errors.full_messages
      redirect_to root_url
    end
  end

  def update
    @quote.update_attributes(quote_params)
    redirect_to root_url
  end

  def edit
    @quote = Quote.find(params[:id])
  end

  private
    def quote_params
      params.require(:quote).permit(:quote_string, :book_title, :book_author)
    end
end
