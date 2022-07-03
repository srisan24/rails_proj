class Loop
  include Celluloid

  def initialize(number)
    @number = number
    Celluloid.boot
  end

  def run
    sum = 0
    @number.times.each{|i| sum = i + sum}
    return sum
  end
end

