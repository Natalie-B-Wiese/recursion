def merge_sort(arr)
  if [0, 1].include?(arr.length)
    arr
  else
    # the number of items to put in the first half.
    # On odd array lengths, arr_1 has 1 more item than arr_2
    num_items_1 = (arr.length / 2.0).ceil
    num_items_2 = arr.length - num_items_1

    arr_1 = arr[0, num_items_1]
    arr_2 = arr[num_items_1, num_items_2]

    arr1_sorted = merge_sort(arr_1)
    arr2_sorted = merge_sort(arr_2)

    # combine the 2 arrays together
    # get minimum value from each
    arr3 = []

    until arr1_sorted.empty? || arr2_sorted.empty?
      if arr1_sorted[0] < arr2_sorted[0]
        arr3.push(arr1_sorted.shift)
      else
        arr3.push(arr2_sorted.shift)
      end
    end

    # if items still remain on one array, continue copying it into arr3
    arr3.push(arr1_sorted.shift) until arr1_sorted.empty?
    arr3.push(arr2_sorted.shift) until arr2_sorted.empty?

    arr3

  end
end
