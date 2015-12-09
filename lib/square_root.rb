class SquareRoot
  attr_reader :number, :expected, :range

  def initialize(number)
    @number = number
    @expected = Math.sqrt(number)
    @range = 0.000001
  end

  def newton_method(z = number/2.0)
    z - ((z**2 - number) / (2.0*z))
  end

  def compute(t = 10, z = number/2.0)
    result ||= z
    t.times do
      result = newton_method(result)
    end
    result
  end

  def times_iterated(z = number/2.0, range = @range)
    result ||= z
    count = 0
    while difference(result) > range do
      result = newton_method(result)
      count += 1
    end
    count
  end

  private
  def difference(result)
    (expected - result).abs
  end
end
