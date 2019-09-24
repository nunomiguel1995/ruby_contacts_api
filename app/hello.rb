# frozen_string_literal: true

get '/' do
  Database.all.to_json
end

get '/contact' do
  name = params['name']
  Database.getContact(name).to_json
end