require 'rails_helper'

RSpec.describe 'Markets Movie Page', type: :feature do
  describe 'When I visit /markets', :vcr do
    it 'has a list of all markets with their name, cite, and state' do
      markets = MarketsFacade.new.all_markets
      m1 = markets.first
      m_last = markets.last
      
      visit markets_path

        expect(page).to have_content(m1.name)
        expect(page).to have_content(m1.city)
        expect(page).to have_content(m1.state)

        expect(page).to have_button("More Info", count: 846)

        expect(page).to have_content(m_last.name)
        expect(page).to have_content(m_last.city)
        expect(page).to have_content(m_last.state)
    end
  end
end
