def stock_picker(days)
    collection = [];
    while days.size > 0
      collection << days.slice(days.index(days.min),    days.length)       #adding [1, 10] into collection
      days.pop(days.slice(days.index(days.min),    days.length).length)    #removing [1, 10] out of [17,3,6,9,15,8,6,1,10]
    end
    #collection is now [[1,10],[3,6,9,15,8,6],[17]]
    output = [];
    collection.each do |subarray|
      output << subarray.max - subarray.min   #adds the greatest difference of each subarray
    end
    p collection[output.index(output.max)].minmax   #it will output the subarray with the greatest difference
  end
  
  stock_picker([17,3,6,9,15,8,6,1,10])