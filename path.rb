class Path
  attr_reader :from, :to, :distance

  def initialize(distance, from, to)
    @distance = distance
    @from = from
    @to = to
  end

  def to_s
  end
end
