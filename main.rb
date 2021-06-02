#!/usr/bin/env ruby

require_relative './dice'

def main
  roles = [
    'うんこ',
    'うんち',
    'ちんこ',
    'まんこ',
    'おまんこ',
    'おちんこ',
    'おちんちん',
  ]
  dice = Dice.new
  rolls = dice.rolls(5)
  roles.each do |role|
    puts "--- #{role}確率 ---"
    puts Dice.send("#{role}確率", rolls)
  end
end






if __FILE__ == $0
  main
end

