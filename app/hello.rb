# frozen_string_literal: true

get '/' do
  Database.all.to_json
end

get '/get_contact' do
  name = params['id']
  Database.getContact(id).to_json
end

post '/add_contact' do
  request.body.rewind  # in case someone already read it
  data = request.body.read
  Database.storeContact(data)
end