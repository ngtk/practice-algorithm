# Bubble sort algorithm
#
# worst: O(n^2)
# best: O(n)
# average: O(n^2)
#
class BubbleSort
  def initialize(numbers)
    @numbers = numbers
  end

  def execute
    loop do
      return @numbers unless bubble
    end
  end

  private

  def bubble
    swapped = false
    0.upto(@numbers.size - 2) do |index|
      next if @numbers[index] <= @numbers[index + 1]

      @numbers[index], @numbers[index + 1] =
        @numbers[index + 1], @numbers[index]
      swapped = true
    end
    swapped
  end
end

sort = BubbleSort.new([2, 5, 2, 6, 1, 4, 7, 8])
result = sort.execute
puts result
