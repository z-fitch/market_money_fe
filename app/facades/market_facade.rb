class MarketFacade
  attr_reader :service, :market_id 

  def initialize(id)
    @market_id = id
    @service = MarketsService.new
  end
  

  def single_market
    json =  @service.one_market(@market_id)

    Market.new(json[:data])
  end

  def vendors_for_market
    json =  @service.vendors(@market_id)

    json[:data].map do |info|
      Vendor.new(info)
    end
  end
end