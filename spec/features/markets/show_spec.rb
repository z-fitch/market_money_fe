require 'rails_helper'

RSpec.describe 'Market Show Page', type: :feature do
  describe 'When I visit /market/:id', :vcr do
    it 'has the information for one specific market' do
      market = MarketFacade.new("322474").single_market
      market_1 = MarketFacade.new("322458").single_market

      market_vendors = MarketFacade.new("322474").vendors_for_market

      visit market_path(market.id)

      expect(page).to have_content(market.name)
      expect(page).to have_content(market.street)
      expect(page).to have_content(market.city)
      expect(page).to have_content(market.state)
      expect(page).to have_content(market.zip)

    
      expect(page).to_not have_content(market_1.name)
      expect(page).to_not have_content(market_1.street)
      expect(page).to_not have_content(market_1.city)
      expect(page).to_not have_content(market_1.state)
      expect(page).to_not have_content(market_1.zip)

      market_vendors.each do |vendor|
        expect(page).to have_link(vendor.name, href: vendor_path(vendor.id))
      end
    end
  end
end