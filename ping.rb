require 'redis'
require 'json'

loop do
  redis = Redis.new
  message = { :body => 'PONG!' }
  redis.lpush('pingpong::ping', message.to_json)
  puts 'PING!'
  sleep 0.2
end
