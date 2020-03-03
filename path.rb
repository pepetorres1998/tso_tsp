class Path
  attr_reader :from, :to, :distance

  def initialize(distance, from, to)
    @distance = distance.to_i
    @from = from
    @to = to
  end

  def to_hash
    hash = {}

    instance_variables.each do |var|
      hash[var.to_s.delete('@')] = instance_variable_get(var)
    end

    hash
  end

  def as_json
    JSON.parse(self.to_hash.to_json)
  end
end
