class SavedQuotesController < ApplicationController
  before_action :authenticate_user!
  def create
    @saved_quote = @user
  end
end
