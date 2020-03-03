class MatrixParser
  attr_reader :lines

  def initialize(file_path)
    @lines = File.read(file_path).split
  end
end
