OpenRouter.configure do |config|
  config.access_token = ENV.fetch("OR_ACCESS_TOKEN")
  config.site_name = "Olympia"
  config.site_url = "https://olympia.chat"
end
