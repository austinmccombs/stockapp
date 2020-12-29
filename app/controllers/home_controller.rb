class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_61becff1e4974bacba63b255c413dc6f')
    if params[:ticker] == ""
      @nothing = "Hey! You Forgot To Enter A Symbol"
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
    end
  end

  def about
  end
  
end
