class MarketsController < ApplicationController
  def index
    @facade = MarketsFacade.new
  end

  def show
    @facade = MarketFacade.new(params[:id])
  end
end