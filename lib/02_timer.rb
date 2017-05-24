class Timer

  attr_accessor :seconds

  def time_string
    hours = (@seconds/(60*60)).to_s.rjust(2,'0')
    mins = ((@seconds/60)%60).to_s.rjust(2,'0')
    sec = (@seconds%60).to_s.rjust(2,'0')
    "#{hours}:#{mins}:#{sec}"
  end

  def seconds
    0
  end

end
