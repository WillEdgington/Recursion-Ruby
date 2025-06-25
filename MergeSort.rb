def merge_sort(arr)
  n=arr.length
  return arr if n<=1 # arr is length of 1 or 0 which is sorted

  m=n/2
  left=merge_sort(arr[0,m]) # call merge_sort with left half of array
  right=merge_sort(arr[m,n-m]) # call merge_sort with right half of array

  sortAndMerge(left,right) # sort and merge the two sorted halves to get sorted arr
end

def sortAndMerge(arr1,arr2)
  merged = []
  until arr1.empty? || arr2.empty?
    merged << (arr1[0] < arr2[0] ? arr1.shift : arr2.shift) # push the smaller value to merged
  end

  merged += arr1 + arr2 # add rest of arr1 or arr2 to merged and return
end

# print merge_sort([3, 2, 1, 13, 8, 5, 0, 1])
# print merge_sort([4,5,3,5,3,2,3,4,5,55,4,36,5,3,4,5,1,29,0,100,102,4,534,25,23363,353,3435])