

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
    Rational(numerator, denominator)
  end

  def self.うんこ?(roll)
    self.んこ?('うんこ', roll)
  end

  def self.うんこ確率(rolls)
    self.んこ確率('うんこ', rolls)
  end

  def うんち?(roll)
    self.んこ?('うんち', roll)
  end

  def self.うんち確率(rolls)
    self.んこ確率('うんち', rolls)
  end
  
  def ちんこ?
    self.んこ?('ちんこ', roll)
  end

  def self.ちんこ確率(rolls)
    self.んこ確率('ちんこ', rolls)
  end

  def まんこ?
    self.んこ?('まんこ', roll)
  end

  def self.まんこ確率(rolls)
    self.んこ確率('まんこ', rolls)
  end

  def おまんこ?
    self.んこ?('おまんこ', roll)
  end

  def self.おまんこ確率(rolls)
    self.んこ確率('おまんこ', rolls)
  end

  def おちんこ?
    self.んこ?('おちんこ', roll)
  end

  def self.おちんこ確率(rolls)
    self.んこ確率('おちんこ', rolls)
  end

  def おちんちん?
    self.んこ?('おちんちん', roll)
  end

  def self.おちんちん確率(rolls)
    self.んこ確率('おちんちん', rolls)
  end
end
