require 'rails_helper'

RSpec.describe 'Vendor Show Page', type: :feature do
  describe 'When I visit /vendor/:id', :vcr do
    it 'has the information for one specific vendor' do
      vendor = VendorFacade.new("55297").single_vendor
      vendor_2 = VendorFacade.new("56227").single_vendor

      visit vendor_path(vendor.id)

      expect(page).to have_content(vendor.name)
      expect(page).to have_content(vendor.contact_phone)
      expect(page).to have_content(vendor.contact_name)
      expect(page).to have_content(vendor.description)
      expect(page).to have_content("No")

      expect(page).to_not have_content(vendor_2.name)
      expect(page).to_not have_content(vendor_2.contact_phone)
      expect(page).to_not have_content(vendor_2.contact_name)
      expect(page).to_not have_content(vendor_2.description)
    end
  end
end