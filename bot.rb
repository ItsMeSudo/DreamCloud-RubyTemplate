require 'discordrb'
require 'dotenv'
Dotenv.load('./.env')
bottoken = ENV['TOKEN']

bot = Discordrb::Bot.new token: bottoken

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run