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

  def upvote
    @quote = Quote.find(params[:format])
    vote_count = @quote.vote_count + 1
    @quote.update(:vote_count => vote_count)
    redirect_to root_url
  end

  def downvote
    @quote = Quote.find(params[:format])
    vote_count = @quote.vote_count - 1
    @quote.update(:vote_count => vote_count)
    if @quote.vote_count == -5
      @quote.destroy
    end
    redirect_to root_url
  end


  private
    def quote_params
      params.require(:quote).permit(:quote_string, :book_title, :book_author)
    end
end
