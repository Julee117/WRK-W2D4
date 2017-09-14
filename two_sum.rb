def bad_two_sum?(arr, target_sum)
  (0...arr.length).each do |x|
    (x+1...arr.length).each do |y|
      if arr[x] + arr[y] == target_sum
        return true
      end
    end
  end
  false
end
