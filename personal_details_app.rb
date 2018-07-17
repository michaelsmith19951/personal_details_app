require "sinatra"
require_relative "personal_details.rb"
get '/' do
	results = results || {}
erb :personal_details_web_page, locals: {results: results}
end
post '/get_change' do
	p results.class
    p results
erb :personal_details_web_page, locals: {results: results}
end