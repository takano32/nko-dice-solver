

class Dice
  def self.cells
    cells = ['う', 'ち', 'ま', 'こ', 'ん', 'お']
  end

  def initialize
    @cells = Dice.cells
  end

  def rolls
    @cells.permutation(5).to_a
  end

  def うんこ?(roll)
    return false unless roll.include?('う')
    return false unless roll.include?('ん')
    return false unless roll.include?('こ')
    return true
  end

  def うんこ
    rolls.inclue?
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
