# bubble sort 2026 @mistermaxk

def bubble_sort(arr)
  n = arr.size-2
  n.times do |i|
    arr[0..n].each_with_index do |el, j|
      if (arr[j+1] < arr[j])
        arr[j+1], arr[j] = arr[j], arr[j+1]
      end
    end
    n -= 1
  end
  arr
end

bubble_sort([4,3,78,2,0,2])
#=> [0,2,2,3,4,78]
bubble_sort([-3, -21, 14, 4, 1, 31, -7])
#=> [-21, -7, -3, 1, 4, 14, 31]