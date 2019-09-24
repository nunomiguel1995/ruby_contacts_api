# frozen_string_literal: true
require 'json'

get '/' do
  Database.all.to_json
end

get '/get_contact' do
  id = params['id']
  Database.getContact(id).to_json
end

post '/add_contact' do
  request.body.rewind  # in case someone already read it
  data = request.body.read
  Database.addContact(data["id"], data["name"], data["phones"], data["emails"], data["company"])
end

post '/delete_contact' do
  request.body.rewind
  data = JSON.parse request.body.read
  Database.deleteContact(data["id"])
end

post '/replace_contact' do
  request.body.rewind  # in case someone already read it
  data = request.body.read
  Database.replaceContact(data["id"], data["name"], data["phones"], data["emails"], data["company"])
end

post '/update_contact' do
  request.body.rewind
  data = JSON.parse request.body.read
  puts data.inspect
  Database.updateContact(data["id"], data["name"], data["phones"], data["emails"], data["company"]).to_json
end
