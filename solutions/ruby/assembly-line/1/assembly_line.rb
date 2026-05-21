class AssemblyLine
  CARS_PER_HOUR = 221
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed >= 1 && @speed <= 4
      @speed * CARS_PER_HOUR
    elsif @speed >= 5 && @speed <= 8
      @speed * 0.9 * CARS_PER_HOUR
    elsif @speed === 9
      @speed * 0.8 * CARS_PER_HOUR
    elsif @speed === 10
      @speed * 0.77 * CARS_PER_HOUR
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end
end
