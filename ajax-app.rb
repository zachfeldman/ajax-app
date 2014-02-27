require 'sinatra'
require 'carmen'
require 'json'
require 'geolocater'

get '/' do
  erb :home
end

post '/state' do
  content_type :json
  us = Carmen::Country.named('United States')
  if params[:state_code]
    state = us.subregions.coded params[:state_code]
    state ? {type: state.type, name: state.name}.to_json : {}.to_json
  else
    {}.to_json
  end
end

post '/geolocate' do
  begin
    Geolocater.geolocate_ip(params[:ip_address]).to_json
  rescue
    {error: "Invalid IP address or other error."}.to_json
  end
end