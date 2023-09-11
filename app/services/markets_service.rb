class MarketsService

  def markets
    get_url("markets")
  end

  def one_market(id)
    get_url("markets/#{id}")
  end

  def vendors(id)
    get_url("markets/#{id}/vendors")
  end

  def one_vendor(id)
    get_url("vendors/#{id}")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "http://localhost:3000/api/v0/")
  end
end