class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @last = @scores.last
  end

  def personal_best
    @highest = @scores.max
  end

  def personal_top_three
    @sorted = @scores.map(&:to_i).sort.reverse
    @top_three = @sorted.first(3)
  end

  def latest_is_personal_best?
    @best = @scores.sort.reverse.first
    @best == @scores.last
  end


end
