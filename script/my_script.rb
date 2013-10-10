require 'addressable/uri'
require 'rest-client'

# url = Addressable::URI.new(
#                             scheme: 'http',
#                             host: 'localhost',
#                             port: 3000,
#                             path: '/users/2.html'
#                             # query_values: {
#                             #   'some_category[a_key]' => 'another value',
#                             #   'some_category[a_second_key]' => 'yet another value',
#                             #   'some_category[inner_inner_hash][key]' => 'value',
#                             #   'something_else' => 'aaahhhhh'
#                             # }
#                           ).to_s
#
#
# # p RestClient.post(url, {"user"=> {:name => "SmallerDragon", :email => "firebreather@gmail.com"}} )
#
# # puts RestClient.get(url)
# # p RestClient.delete(url)
# # p RestClient.get(url)
# p RestClient.put(url, {"user"=> {:name => "UpdatedDragon", :email => "smoke@gmail.com"}} )



url = Addressable::URI.new(
                            scheme: 'http',
                            host: 'localhost',
                            port: 3000,
                            path: 'users/1/contacts.html'
                            # query_values: {
                            #   'some_category[a_key]' => 'another value',
                            #   'some_category[a_second_key]' => 'yet another value',
                            #   'some_category[inner_inner_hash][key]' => 'value',
                            #   'something_else' => 'aaahhhhh'
                            # }
                          ).to_s


# p RestClient.post(url, {"user"=> {:name => "SmallerDragon", :email => "firebreather@gmail.com"}} )

# puts RestClient.get(url)
# p RestClient.delete(url)
p RestClient.get(url)
# p RestClient.put(url, {:contact=> {:name => "UpdatedDragon", :email => "smoke@gmail.com"}}, :user_id => 1)