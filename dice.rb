

class Dice
  def self.cells
    cells = ['う', 'ち', 'ま', 'こ', 'ん', 'お']
  end

  def initialize
    @cells = Dice.cells
  end

  def rolls(n)
    @cells.repeated_permutation(n).to_a
  end


  def self.んこ?(word, roll)
    word.each_char do |ch|
      return false unless roll.include?(ch)
    end
    return true
  end

  def self.んこ確率(word, rolls)
    numerator = 0
    rolls.each do |roll|
      if Dice.send("#{word}?", roll)
        numerator += 1
      end
    end

    denominator = rolls.size
    puts "分子: #{numerator}"
    puts "分母: #{denominator}"
    Rational(numerator, denominator)
  end

  def self.うんこ?(roll)
    self.んこ?('うんこ', roll)
  end

  def self.うんこ確率(rolls)
    self.んこ確率('うんこ', rolls)
  end

  def self.うんち?(roll)
    self.んこ?('うんち', roll)
  end

  def self.うんち確率(rolls)
    self.んこ確率('うんち', rolls)
  end
  
  def self.ちんこ?(roll)
    self.んこ?('ちんこ', roll)
  end

  def self.ちんこ確率(rolls)
    self.んこ確率('ちんこ', rolls)
  end

  def self.まんこ?(roll)
    self.んこ?('まんこ', roll)
  end

  def self.まんこ確率(rolls)
    self.んこ確率('まんこ', rolls)
  end

  def self.おまんこ?(roll)
    self.んこ?('おまんこ', roll)
  end

  def self.おまんこ確率(rolls)
    self.んこ確率('おまんこ', rolls)
  end

  def self.おちんこ?(roll)
    self.んこ?('おちんこ', roll)
  end

  def self.おちんこ確率(rolls)
    self.んこ確率('おちんこ', rolls)
  end

  def self.おちんちん?(roll)
    tally = roll.tally
    return false unless roll.include?('お')
    return false unless tally['ち']
    return false if 2 > tally['ち']
    return false unless tally['ん']
    return false if 2 > tally['ん']
    return true
  end

  def self.おちんちん確率(rolls)
    self.んこ確率('おちんちん', rolls)
  end
end
