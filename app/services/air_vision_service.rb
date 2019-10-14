require "http"
class AirVisionService

def get_city_data(city,state,country)
  #doesnt work when city name has a space, calls per minute limit reached problem
	response = HTTP.get("http://api.airvisual.com/v2/city?city=#{city}&state=#{state}&country=#{country}&key=77b6b459-4eab-4a31-8c6e-fcbeffdc1914")
  parsed_response = JSON.parse(response.body)

  if parsed_response["data"]["current"] == nil
    return "calls per minutes limit reached"
  end

  parsed_response["data"]["current"]["pollution"]


end

def get_country()
  response = HTTP.get("http://api.airvisual.com/v2/countries?key=77b6b459-4eab-4a31-8c6e-fcbeffdc1914")
  parsed_response = JSON.parse(response.body)
end

def get_city(country, state)
  response = HTTP.get("http://api.airvisual.com/v2/cities?state=#{state}&country=#{country}&key=77b6b459-4eab-4a31-8c6e-fcbeffdc1914")
  parsed_response = JSON.parse(response.body)
end
end
