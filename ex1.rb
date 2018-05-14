require 'httparty'

response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
parsed_response = JSON.parse(response.body)

parsed_response["objects"].each do |ward|
  puts ward["name"]
end
