ZERO = '00:00:00'

class Timer
  attr_accessor :seconds
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def time_string
    temp = @seconds
    hours = temp / 3600
    temp -= hours * 3600
    minutes = temp / 60
    temp -= minutes * 60
    if hours < 10
      hours = '0'+hours.to_s
    else
      hours = hours.to_s
    end
    if minutes < 10
      minutes = '0'+minutes.to_s
    else
      minutes = minutes.to_s
    end
    if temp < 10
      temp = '0'+temp.to_s
    else
      temp = temp.to_s
    end
    hours + ':'+ minutes + ':' + temp
  end
end
