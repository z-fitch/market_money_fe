class MarketsFacade
  attr_reader :service

  def initialize
    @service = MarketsService.new
  end
  
  def all_markets 
    json =  @service.markets
# require 'pry'; binding.pry
    json[:data].map do |info|
      Market.new(info)
    end
  end

end