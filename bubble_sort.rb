def bubble_sort(array)
    array.each_with_index do |num, i|
        return array if i == (array.length-1)
        if array[i] > array[i+1]
            array[i] = array[i+1]
            array[i+1] = num
            bubble_sort(array)
        end
    end
end 

p bubble_sort([4,3,78,2,0,2,123,5,1,2,124,12312])