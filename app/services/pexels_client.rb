class PexelsClient
  BASE_URL = "https://api.pexels.com/v1/"
  
  def connection
    Faraday.new(
      url: BASE_URL,
      headers: {
        "Authorization" => ENV["PEXELS_API_KEY"]
      }
    )
  end

  def photos 
    connection.get("curated")
  end

  def collection_media(id)
    connection.get("collections/#{id}")
  end
  





end
