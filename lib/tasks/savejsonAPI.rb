require 'net/http'
require 'json'


# clear all data in database
stock = Stock.all
stock.delete_all

# get JSON
result = Net::HTTP.get(URI.parse('https://www.kimonolabs.com/api/3obhv4p0?apikey=WWHHbKEkOmAPXsObOccPBXTb5NgRyCNO'))

# parse JSON
json = JSON.parse(result)
# returns a ruby hash

# save data to DB
# work through the Stock model
json['results']['collection1'][1..-1].each do |data|
    # [1..-1] ignores first dummy element
    Stock.create(
        company: data['property1']['text'],
        url: data['property1']['href'],
        pe: data['property2'].gsub(',', ''), #.gsub removes thousands separator. gsub(pattern, replacement) → new_str
        quote: data['property3'].gsub(',', '')
        )
end



