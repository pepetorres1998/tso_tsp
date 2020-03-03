require_relative 'path'
require_relative 'matrix_parser'
require 'pry'

if __FILE__ == $0
  matrix = MatrixParser.new('./matrix.csv')
  paths = matrix.lines.map.with_index do |line, from|
    line.split(',').map.with_index do |distance, to|
      Path.new(distance, from, to) unless distance.to_i.zero?
    end
  end.flatten!.reject!(&:nil?)

  pp paths.map { |path| JSON.parse(path.to_hash.to_json) }
end
