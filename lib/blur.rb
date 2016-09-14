# Image Class holds array and functions
class Image
  attr_accessor :array

  def initialize(array)
    self.array = array
  end

  def print
    array.each_index do |row|
      array[row].each_index do |column|
        print array[row][column].to_s + ' '
      end
      # line break
      puts
    end
  end

  def find_ones
    @starting_ones = []
    array.each_index do |row|
      array[row].each_index do |column|
        @starting_ones << [row, column] if array[row][column].to_i == 1
      end
    end
  end

  def grow_ones
    @grown_ones = []
    @starting_ones.each do |one|
      @grown_ones << one

      row = one[0]
      column = one[1]

      # if statements checks for edges
      @grown_ones << [row - 1, column] if row > 0
      @grown_ones << [row, column - 1] if column > 0
      @grown_ones << [row + 1, column] if row < array.length - 1
      @grown_ones << [row, column + 1] if column < array.first.length - 1
    end
  end

  def set_ones
    array.each_index do |row|
      array[row].each_index do |column|
        array[row][column] = 1 if @grown_ones.include?([row, column])
      end
    end
  end

  def blur(distance)
    (1..distance).each do
      find_ones
      grow_ones
      set_ones
    end
  end
end
