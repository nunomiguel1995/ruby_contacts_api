# frozen_string_literal: true
require 'json'

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
  Database.addContact(data["id"], date["name"], date["phones"], date["emails"], date["company"])
end

post '/delete_contact' do
  request.body.rewind
  data = request.body.read
  Database.deleteContact(data["id"])
end

post '/replace_contact' do
  request.body.rewind  # in case someone already read it
  data = request.body.read
  Database.replaceContact(data["id"], date["name"], date["phones"], date["emails"], date["company"])
end

post '/update_contact' do
  request.body.rewind
  data = request.body.read
  Database.updateContact(data["id"], date["name"], date["phones"], date["emails"], date["company"])
end
