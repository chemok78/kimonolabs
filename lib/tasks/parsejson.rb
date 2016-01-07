require 'json'

json = JSON.parse()

json['collection1'].each do |element|
   
   element.each do |key, value|
       Model.create(date: key, number: value)
   end 

end