require 'sinatra'
require 'json'

require_relative '../database.rb'

before do
  content_type :json
end

require_relative '../app/hello.rb'
