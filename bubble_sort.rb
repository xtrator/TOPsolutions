def bubble_sort(array)
    array.each_with_index do |num, i|   
        return array if i == (array.length-1)  #end point of recurssion, returns array when index reaches last
        if array[i] > array[i+1]    #if the current number is more than the next number
            array[i] = array[i+1]       #replace current number with next number
            array[i+1] = num            #replace next number with the current number
            bubble_sort(array)          #call the same function with the modified array to start over from index 0
        end
    end
end 

p bubble_sort([4,3,78,2,0,2,123,5,1,2,124,12312])
