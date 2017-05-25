require "byebug"

class Dictionary
  # TODO: your code goes here!
  attr_reader :entries

  def initialize
    @entries = {}
  end

  def add(input)
    if input.instance_of?(String)
      @entries[input] = nil
    else
      @entries.merge!(input)
    end
  end

  def keywords
    # debugger
    @entries.keys if @entries.keys.length == 1
    @entries.keys.sort
  end

  def include?(key)
    @entries.has_key?(key)
  end

  def find(input)
    @entries.select {|k,v| k.include?(input)}
  end

  def printable
    result = ""
    sorted = @entries.sort_by {|k,v| k}
    sorted.each do |k,v|
      result << "[#{k}] \"#{v}\"" + "\n"
    end
    result.strip
  end

end
