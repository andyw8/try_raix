Raix.configure do |config|
  config.openrouter_client = OpenRouter::Client.new(access_token: ENV.fetch("OR_ACCESS_TOKEN")) do |config|
    config.faraday do |f|
      f.response :logger, ::Logger.new($stdout), { headers: true, bodies: true, errors: true } do |logger|
        logger.filter(/(Bearer) (\S+)/, '\1[REDACTED]')
      end
    end
  end
  config.max_tool_calls = 10
end
