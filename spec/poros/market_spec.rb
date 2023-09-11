require 'rails_helper'

RSpec.describe Market do
  it 'exists' do
    data = {
      id: 123,
      type: "market",
      attributes: {
        name: "2nd Street Farmers' Market",
        street: "194 second street",
        city: "Amherst",
        state: "Virginia",
        zip: "24521",
      }
    }

    market = Market.new(data)

    expect(market).to be_a(Market)
    expect(market.id).to eq(123)
    expect(market.name).to eq("2nd Street Farmers' Market")
    expect(market.street).to eq("194 second street")
    expect(market.city).to eq("Amherst")
    expect(market.state).to eq("Virginia")
    expect(market.zip).to eq("24521")
  end
end