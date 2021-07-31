# frozen_string_literal: true

json.extract! user, :id, :username, :token
json.url user_url(user, format: :json)
