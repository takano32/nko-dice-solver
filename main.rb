#!/usr/bin/env ruby

require_relative './dice'

def main
  dice = Dice.new
  dice.rolls.each do |roll|
    p roll
    puts "うんこ: #{dice.うんこ?(roll)}"
    puts '----'
  end
end






if __FILE__ == $0
  main
end

