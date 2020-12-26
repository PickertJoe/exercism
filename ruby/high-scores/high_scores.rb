class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @last = @scores.last
  end

  def personal_best
    @highest = @scores.max
  end

  def personal_top_three
    @scores.max(3)
  end

  def latest_is_personal_best?
    @best = @scores.sort.reverse.first
    personal_best == @scores.last
  end
end
