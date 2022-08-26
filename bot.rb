require 'discordrb'

bot = Discordrb::Bot.new token: 'tokenbruh'

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run