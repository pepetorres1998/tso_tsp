require_relative 'path'
require_relative 'matrix_parser'

if __FILE__ == $0
  matrix = MatrixParser.new('./matrix.csv')
  paths = matrix.lines.map.with_index do |line, from|
    line.split(',').map.with_index do |distance, to|
      Path.new(distance, from, to)
    end
  end

  puts paths
end