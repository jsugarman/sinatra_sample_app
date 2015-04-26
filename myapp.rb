
require 'rubygems'
require 'sinatra'

# -----------------------------------
# begin routes
# -----------------------------------

# root route
get '/' do
	'my first sinatra app'
end

# route using params
get '/hello/:name' do |n|
	"hello #{n}"
end

get('/stream') { Stream.new }

# -----------------------------------
# end routes
# -----------------------------------

class Stream 
	def each
		100.times do |i|
			"yeild #{i}\n"
		end
	end
end