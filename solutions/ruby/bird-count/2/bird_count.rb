class BirdCount
  BUSY_DAY_MIN = 5

  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    @birds_per_day.reduce { |total, acc| total + acc }
  end

  def busy_days
    @birds_per_day.select { |c| c >= BUSY_DAY_MIN }.size
  end

  def day_without_birds?
    @birds_per_day.include?(0)
  end
end
