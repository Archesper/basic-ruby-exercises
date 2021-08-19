def bubble_sort(array)
    i = 0
    until i == array.size - 1 do
        is_sorted = true # Assume array is sorted at first
        # After i iterations the last i numbers are already sorted, subtract i's value from end index to ignore them
        array[0..-2 - i].each_with_index do |value, index|
            if array[index] > array[index+1]
                array[index], array[index+1] = array[index+1], array[index]
                is_sorted = false # If a swap has occured, then the array was not sorted
            end
        end
        break if is_sorted # If array is indeed sorted, break loop for efficiency
        i += 1
    end
    array
end

p bubble_sort([4,3,78,2,0,2])