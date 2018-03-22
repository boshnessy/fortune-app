# Bonus: Make a Ruby script using the Unirest gem to display the results in the terminal instead of a web browser!
# interacts with rails app
require 'unirest'

p "Here is your fortune:"
response = Unirest.get("http://localhost:3000/fortune")

p response.body