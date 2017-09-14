def my_min(arr)
  min_el = arr.first
  arr.each_with_index do |el, i|
    next_idx = i + 1
    until next_idx == arr.length
      if arr[next_idx] < min_el
        min_el = arr[next_idx]
      end
      next_idx += 1
    end
  end
  min_el
end

# Time complexity = O(n^2)

def my_min(arr)
  min_el = arr.first
  arr.each do |el|
    if el < min_el
      min_el = el
    end
  end
  min_el
end

# Time complexity = O(n)


def sub_sum(arr)
  sub_arrs = []
  arr.each_with_index do |el,i|
    next_idx = 1
    while next_idx <= arr.length
      sub_arrs << arr[i, next_idx] unless sub_arrs.include?(arr[i, next_idx])
      next_idx += 1
    end
  end
  largest_sum = sub_arrs.first.reduce(:+)
  sub_arrs.each do |el|
    if el.reduce(:+) > largest_sum
      largest_sum = el.reduce(:+)
    end
  end
  largest_sum
end

# Time complexity = O(n^2 || n^3)

def sub_sum2(arr)
  current_sum = 0
  biggest_sum = arr.first
  arr.each do |el|
    current_sum += el
    if current_sum > biggest_sum
      biggest_sum = current_sum
    elsif current_sum < 0
      current_sum = 0
    end
  end
  biggest_sum

  #no extra arrays
  #only one iteration through array
  #biggest sum variable
  #current_sum

end








end
