class Vendor
  attr_reader :name, :id, :description, :contact_name, :contact_phone, :credit_accepted

  def initialize(params)
    @id = params[:id]
    @name = params[:attributes][:name]
    @description = params[:attributes][:description]
    @contact_name = params[:attributes][:contact_name]
    @contact_phone = params[:attributes][:contact_phone]
    @credit_accepted = credit(params[:attributes][:credit_accepted])
  end

  def credit(boolean)
    if boolean == true
      "Yes"
    else
      "No"
    end
  end
end