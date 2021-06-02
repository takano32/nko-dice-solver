

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

  def うんち
  end
  
  def ちんこ
  end

  def まんこ
  end

  def おまんこ
  end

  def おちんこ
  end

  def おちんちん
  end


end
