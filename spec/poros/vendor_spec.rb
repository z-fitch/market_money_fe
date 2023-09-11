require 'rails_helper'

RSpec.describe Vendor do
  it 'exists' do
    
    data = {
      id: 123,
      type: "vendor",
      attributes: {
        name: 'Fancy Fruits',
        description: 'We sell VERY Fancy Fruits',
        contact_name: 'Jane', 
        contact_phone: '432-867-5309',
        credit_accepted: true
      }
    }

    vendor = Vendor.new(data)

    expect(vendor).to be_a(Vendor)
    expect(vendor.id).to eq(123)
    expect(vendor.name).to eq('Fancy Fruits')
    expect(vendor.description).to eq('We sell VERY Fancy Fruits')
    expect(vendor.contact_name).to eq('Jane')
    expect(vendor.contact_phone).to eq('432-867-5309')
    expect(vendor.credit_accepted).to eq('Yes')
  end

  describe 'Instance Methods' do 
    describe '#credit' do 
      it 'can take a boolean and return a string' do 
        data = {
          id: 123,
          type: "vendor",
          attributes: {
            name: 'Fancy Fruits',
            description: 'We sell VERY Fancy Fruits',
            contact_name: 'Jane', 
            contact_phone: '432-867-5309',
          }
          }
        vendor = Vendor.new(data)

        expect(vendor.credit(true)).to eq("Yes")
        expect(vendor.credit(false)).to eq("No")
      end
    end
  end
end