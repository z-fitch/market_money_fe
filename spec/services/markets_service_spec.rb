require 'rails_helper'

RSpec.describe MarketsService do
  describe 'Instance Methods' do
    context '#markets', :vcr do
      it 'returns all markets' do
        markets = MarketsService.new.markets
        market = markets[:data].first

        expect(markets[:data].count).to_not eq(1)

        expect(markets).to be_an(Hash)

        expect(market).to have_key(:id)
        expect(market[:id]).to be_an(String)

        expect(market).to have_key(:type)
        expect(market[:type]).to be_an(String)

        expect(market).to have_key(:attributes)
        expect(market[:attributes]).to be_an(Hash)

        expect(market[:attributes]).to have_key(:name)
        expect(market[:attributes][:name]).to be_a(String)

        expect(market[:attributes]).to have_key(:street)
        expect(market[:attributes][:street]).to be_a(String)

        expect(market[:attributes]).to have_key(:city)
        expect(market[:attributes][:city]).to be_a(String)

        expect(market[:attributes]).to have_key(:county)
        expect(market[:attributes][:county]).to be_a(String)

        expect(market[:attributes]).to have_key(:state)
        expect(market[:attributes][:state]).to be_a(String)

        expect(market[:attributes]).to have_key(:zip)
        expect(market[:attributes][:zip]).to be_a(String)

        expect(market[:attributes]).to have_key(:lat)
        expect(market[:attributes][:lat]).to be_a(String)

        expect(market[:attributes]).to have_key(:lon)
        expect(market[:attributes][:lon]).to be_a(String)

        expect(market[:attributes]).to have_key(:vendor_count)
        expect(market[:attributes][:vendor_count]).to be_a(Integer)
      end
    end

    context '#one_market', :vcr do
      it 'returns one market' do
        market = MarketsService.new.one_market("322474")

        expect(market[:data]).to have_key(:id)
        expect(market[:data][:id]).to be_an(String)

        expect(market[:data]).to have_key(:type)
        expect(market[:data][:type]).to be_an(String)

        expect(market[:data]).to have_key(:attributes)
        expect(market[:data][:attributes]).to be_an(Hash)

        expect(market[:data][:attributes]).to have_key(:name)
        expect(market[:data][:attributes][:name]).to be_a(String)

        expect(market[:data][:attributes]).to have_key(:street)
        expect(market[:data][:attributes][:street]).to be_a(String)

        expect(market[:data][:attributes]).to have_key(:city)
        expect(market[:data][:attributes][:city]).to be_a(String)

        expect(market[:data][:attributes]).to have_key(:county)
        expect(market[:data][:attributes][:county]).to be_a(String)

        expect(market[:data][:attributes]).to have_key(:state)
        expect(market[:data][:attributes][:state]).to be_a(String)

        expect(market[:data][:attributes]).to have_key(:zip)
        expect(market[:data][:attributes][:zip]).to be_a(String)

        expect(market[:data][:attributes]).to have_key(:lat)
        expect(market[:data][:attributes][:lat]).to be_a(String)

        expect(market[:data][:attributes]).to have_key(:lon)
        expect(market[:data][:attributes][:lon]).to be_a(String)

        expect(market[:data][:attributes]).to have_key(:vendor_count)
        expect(market[:data][:attributes][:vendor_count]).to be_a(Integer)
      end
    end

    context '#vendors', :vcr do
      it 'returns all vendors for a market' do
        vendors = MarketsService.new.vendors("322474")
      
        expect(vendors[:data].count).to_not eq(1)
        expect(vendors[:data].count).to eq(35)

        expect(vendors).to be_an(Hash)

        vendors[:data].each do |vendor|

          expect(vendor).to have_key(:id)
          expect(vendor[:id]).to be_an(String)

          expect(vendor).to have_key(:type)
          expect(vendor[:type]).to be_an(String)

          expect(vendor).to have_key(:attributes)
          expect(vendor[:attributes]).to be_an(Hash)

          expect(vendor[:attributes]).to have_key(:name)
          expect(vendor[:attributes][:name]).to be_a(String)

          expect(vendor[:attributes]).to have_key(:description)
          expect(vendor[:attributes][:description]).to be_a(String)

          expect(vendor[:attributes]).to have_key(:contact_name)
          expect(vendor[:attributes][:contact_name]).to be_a(String)

          expect(vendor[:attributes]).to have_key(:contact_phone)
          expect(vendor[:attributes][:contact_phone]).to be_a(String)

          expect(vendor[:attributes]).to have_key(:credit_accepted)
          expect(vendor[:attributes][:credit_accepted]).to be_in([true, false])
        end
      end
    end

    context '#one_vendor', :vcr do
      it 'returns one vendor' do
        vendor = MarketsService.new.one_vendor("55297")
        # require 'pry'; binding.pry
        expect(vendor.count).to eq(1)
        expect(vendor.count).to_not eq(35)

        expect(vendor).to be_an(Hash)

        expect(vendor[:data]).to have_key(:id)
        expect(vendor[:data][:id]).to be_an(String)

        expect(vendor[:data]).to have_key(:type)
        expect(vendor[:data][:type]).to be_an(String)

        expect(vendor[:data]).to have_key(:attributes)
        expect(vendor[:data][:attributes]).to be_an(Hash)

        expect(vendor[:data][:attributes]).to have_key(:name)
        expect(vendor[:data][:attributes][:name]).to be_a(String)

        expect(vendor[:data][:attributes]).to have_key(:description)
        expect(vendor[:data][:attributes][:description]).to be_a(String)

        expect(vendor[:data][:attributes]).to have_key(:contact_name)
        expect(vendor[:data][:attributes][:contact_name]).to be_a(String)

        expect(vendor[:data][:attributes]).to have_key(:contact_phone)
        expect(vendor[:data][:attributes][:contact_phone]).to be_a(String)

        expect(vendor[:data][:attributes]).to have_key(:credit_accepted)
        expect(vendor[:data][:attributes][:credit_accepted]).to be_in([true, false])
      end
    end
  end
end