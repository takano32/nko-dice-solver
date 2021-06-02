

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

  def self.うんこ?(roll)
    return false unless roll.include?('う')
    return false unless roll.include?('ん')
    return false unless roll.include?('こ')
    return true
  end

  def self.うんこ率(rolls)
    numerator = 0
    rolls.each do |roll|
      if Dice.うんこ?(roll)
        numerator += 1
      end
    end

    denominator = rolls.size
    Rational(numerator, denominator)
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
