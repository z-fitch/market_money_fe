class Market
  attr_reader :name, :city, :state, :id, :street, :zip

  def initialize(params)
    @id = params[:id]
    @name = params[:attributes][:name]
    @city = params[:attributes][:city]
    @state = params[:attributes][:state]
    @street = params[:attributes][:street]
    @zip = params[:attributes][:zip]
  end
end