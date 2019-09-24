# frozen_string_literal: true

get '/' do
  Database.all.to_json
end
