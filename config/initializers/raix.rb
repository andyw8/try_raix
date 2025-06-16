Raix.configure do |config|
  config.openrouter_client = OpenRouter::Client.new(access_token: ENV.fetch("OR_ACCESS_TOKEN"))
end
