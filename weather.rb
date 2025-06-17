require "raix"

class WhatIsTheWeather
  include Raix::ChatCompletion
  include Raix::FunctionDispatch

  def initialize
     self.model = "openai/gpt-4.1-mini"
   end

  function :check_weather,
           "Check the weather for a location",
           location: { type: "string", required: true } do |arguments|
    "The weather in #{arguments[:location]} is hot and sunny"
  end
end

if __FILE__ == $0
  weather = WhatIsTheWeather.new
  weather.transcript << { user: "What is the weather in Zipolite, Oaxaca?" }
  response = weather.chat_completion
  puts response
end
