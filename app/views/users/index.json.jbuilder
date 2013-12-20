json.array!(@users) do |user|
  json.extract! user, :name, :provider, :uid
  json.url user_url(user, format: :json)
end