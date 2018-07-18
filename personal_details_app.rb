require "sinatra"
get '/' do
	erb :personal_details_web_page
end
post '/personal_details_web_page' do
	first_name_input = params[:first_name_input]
	last_name_input = params[:last_name_input]
	redirect '/personal_details_physical_address_page?first_name_input=' + first_name_input + '&last_name_input=' + last_name_input
end
get '/personal_details_physical_address_page' do
	first_name_input = params[:first_name_input]
	last_name_input = params[:last_name_input]
	erb :personal_details_physical_address_page, locals:{first_name_input: params[:first_name_input], last_name_input: params[:last_name_input]}
end
post '/personal_details_physical_address_page' do
	first_name_input = params[:first_name_input]
	last_name_input = params[:last_name_input]
	address_input = params[:address_input]
	city_input = params[:city_input]
	state_input = params[:state_input]
	zip_input = params[:zip_input]
	erb :personal_details_physical_address_page, locals:{first_name_input: params[:first_name_input], last_name_input: params[:last_name_input]}
	redirect '/fav_numbers?first_name_input=' + first_name_input + '&last_name_input=' + last_name_input + '&physical_address=' + physical_address + '&city_input=' + city_input + '&state_input=' + state_input + '&zip_input=' + zip_input
end
get '/fav_numbers' do
	first_name_input = params[:first_name_input]
	last_name_input = params[:last_name_input]
	address_input = params[:address_input]
	city_input = params[:city_input]
	state_input = params[:state_input]
	zip_input = params[:zip_input]
	erb :fav_numbers, locals:{first_name_input: params[:first_name_input], last_name_input: params[:last_name_input], physical_address: params[:physical_address], city_input: params[:city_input], state_input: params[:state_input], zip_input: params[:zip_input]}
end
post '/fav_numbers' do
	first_name_input = params[:first_name_input]
	last_name_input = params[:last_name_input]
	physical_address = params[:physical_address]
	city_input = params[:city_input]
	state_input = params[:state_input]
	zip_input = params[:zip_input]
	fav_num1 = params[:fav_num1]
	fav_num2 = params[:fav_num2]
	fav_num3 = params[:fav_num3]
	erb :fav_numbers, locals:{first_name_input: params[:first_name_input], last_name_input: params[:last_name_input], physical_address: params[:physical_address], city_input: params[:city_input], state_input: params[:state_input], zip_input: params[:zip_input]}
	redirect '/final_page?first_name_input=' + first_name_input + '&last_name_input=' + last_name_input + '&physical_address=' + physical_address + '&city_input=' + city_input + '&state_input=' + state_input + '&zip_input=' + zip_input + '&fav_num1=' + fav_num1 + '&fav_num2=' + fav_num2 + '&fav_num3=' + fav_num3
end
get '/final_page' do
	first_name_input = params[:first_name_input]
	last_name_input = params[:last_name_input]
	physical_address = params[:physical_address]
	city_input = params[:city_input]
	state_input = params[:state_input]
	zip_input = params[:zip_input]
	fav_num1 = params[:fav_num1]
	fav_num2 = params[:fav_num2]
	fav_num3 = params[:fav_num3]
	erb :final_page, locals:{first_name_input: params[:first_name_input], last_name_input: params[:last_name_input], physical_address: params[:physical_address], city_input: params[:city_input], state_input: params[:state_input], zip_input: params[:zip_input], fav_num1: params[:fav_num1], fav_num2: params[:fav_num2], fav_num3: params[:fav_num3]}
end