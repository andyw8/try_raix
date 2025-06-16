unless defined?(Rails)
  puts "Run this via `rails runner`"
  exit 1
end
require "raix"

class MeaningOfLife
  include Raix::ChatCompletion
end

if __FILE__
  ai = MeaningOfLife.new
  ai.transcript << { user: "What is the meaning of life?" }
  puts ai.chat_completion
end
