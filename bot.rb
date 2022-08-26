require 'discordrb'
require 'dotenv'
Dotenv.load('./.env')
bottoken = ENV['TOKEN']
require 'ruby_figlet'
using RubyFiglet

promo = RubyFiglet::Figlet.new "A bot fut,\nby: DreamCloud!", 'basic'
promo.show


bot = Discordrb::Bot.new token: bottoken

bot.message(with_text: 'Ping!') do |event|
  event.respond 'Pong!'
end

bot.run