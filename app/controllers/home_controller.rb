class HomeController < ApplicationController
  def index
    @api = StockQuote::Stock.new(api_key: 'pk_61becff1e4974bacba63b255c413dc6f')
  end

  def about
  end
  
end
