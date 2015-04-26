require 'rubygems'
require 'sinatra'

# 
# get the shotgun server up with: shotgun myapp.rb (from app route)	
# 

# -----------------------------------
# begin routes
# -----------------------------------

# root route
get '/' do
	haml :index
end

# route using params
get '/hello/:name' do |n|
	"hello #{n}"
end


class Stream 
	def each
		100.times { |i| yield "#{i}\n" }
	end
end

get('/stream') { Stream.new }

# -----------------------------------
# end routes
# -----------------------------------
