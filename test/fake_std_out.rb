class FakeStdOut
  attr_reader :strings

  def initialize
    @strings = []
  end
  def puts(string=nil)
    @strings << string unless string.nil?
  end

  # Returns true if the regexp matches anything in the output
  def contained?(regexp)
    strings.find{ |x| x =~ regexp }
  end

  def to_s
    @strings.join("\n")
  end
end
