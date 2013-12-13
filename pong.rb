require 'redis'
require 'json'

loop do
  redis = Redis.new
  if redis.llen('pingpong::ping') > 0
    message = JSON.parse(redis.rpop('pingpong::ping'))
    puts message['body']
  end
  sleep 0.2
end
