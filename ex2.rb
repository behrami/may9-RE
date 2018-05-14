require 'httparty'

response = HTTParty.get("https://represent.opennorth.ca/representatives/house-of-commons/")
parsed_response = JSON.parse(response.body)

array = []
hash = {}

parsed_response["objects"].each do |representative|
  puts "Name: #{representative["name"]}"
  puts "Party: #{representative["party_name"]}"
  puts "Email: #{representative["email"]}"
  puts

  hash[:name] = representative["name"]
  hash[:party] = representative["party_name"]
  hash[:email] = representative["email"]

  array.push(hash)
end

p array
