class Timer

  def initialize
    @seconds
  end

  def seconds
    @seconds = 0
  end

  def seconds=(time)
    @seconds = time
  end
     
  def padded(num)
    num < 9 ? "0" + num.to_s : num.to_s
  end
  
  def time_string
    hours = @seconds/3600
    minutes = (@seconds%3600)/60
    seconds = @seconds % 60
    @time_string = "#{padded(hours)}:#{padded(minutes)}:#{padded(seconds)}"
  end
  
end
