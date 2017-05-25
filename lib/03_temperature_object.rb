class Temperature
  attr_accessor :options

  def initialize(options)
    self.options = options
  end

  def in_fahrenheit
    return options[:f] if options[:f]
    (options[:c] * 9.0/5) + 32
  end

  def in_celsius
    return options[:c] if options[:c]
    (options[:f] - 32.0) * 5/9
  end

  def self.from_celsius(temp_in_c)
    self.new(:c => temp_in_c)
  end

  def self.from_fahrenheit(temp_in_f)
    self.new(:f => temp_in_f)
  end

end

class Celsius < Temperature
  def initialize(c)
    super(:c => c)
  end
end

class Fahrenheit < Temperature
  def initialize(f)
    super(:f => f)
  end
end
