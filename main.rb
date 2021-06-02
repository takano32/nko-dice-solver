#!/usr/bin/env ruby

require_relative './dice'

def main
  dice = Dice.new
  rolls = dice.rolls(5)
  puts rolls.size
  p Dice.うんこ確率(rolls)
end






if __FILE__ == $0
  main
end

