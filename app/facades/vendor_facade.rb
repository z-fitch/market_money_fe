class VendorFacade
  attr_reader :service, :vendor_id 

  def initialize(id)
    @vendor_id = id
    @service = MarketsService.new
  end
  

  def single_vendor
    json =  @service.one_vendor(@vendor_id)

    Vendor.new(json[:data])
  end
end