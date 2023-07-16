# frozen_string_literal: true

def merge_sort(array)
  return array if array.length < 2

  left_half = array[0..array.length / 2 - 1]
  right_half = array[left_half.length..array.length]

  sorted_left = merge_sort(left_half)
  sorted_right = merge_sort(right_half)

  merge(array, sorted_left, sorted_right)
end

def merge(array, sorted_left, sorted_right)
  left_size = sorted_left.length
  right_size = sorted_right.length

  array_pointer = 0
  left_pointer = 0
  right_pointer = 0

  while left_pointer < left_size && right_pointer < right_size
    if sorted_left[left_pointer] < sorted_right[right_pointer]
      array[array_pointer] = sorted_left[left_pointer]
      left_pointer += 1
    else
      array[array_pointer] = sorted_right[right_pointer]
      right_pointer += 1
    end
    array_pointer += 1
  end

  while left_pointer < left_size
    array[array_pointer] = sorted_left[left_pointer]
    left_pointer += 1
    array_pointer += 1
  end

  while right_pointer < right_size
    array[array_pointer] = sorted_right[right_pointer]
    right_pointer += 1
    array_pointer += 1
  end

  array
end

array2sort = [5, 2, 1, 3, 6, 4]
p merge_sort(array2sort)
