module TestResult
  def to_odds(p)
    odds = p / (1 - p)
    puts odds
  end

  def to_probability(o)
    probability = o / (o + 1)
    puts "#{probability * 100} %"

  end
end
