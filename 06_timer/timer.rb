class Timer
  attr_accessor :seconds

  def initialize(seconds=0)
    @seconds=seconds
  end

  def time_string
    x=Time.new(0)+@seconds
    x.strftime '%H:%M:%S'
  end
end