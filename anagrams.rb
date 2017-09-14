def first_anagram?(string, word)
  perms_arr = perms(string).map{|el| el.join}
  perms_arr.include?(word)
end

def perms(string)
  return [string.split("")] if string.length <= 1

  str_array = string.split("")
  first = str_array.shift

  perms = perms(str_array.join)

  total_permutations = []

  perms.each do |perm|
    (0..perm.length).each do |i|
      total_permutations << perm[0 ... i] + [first] + perm[i .. -1]
    end
  end

  total_permutations
end

# Time complexity = O(n! * n)

def second_anagram(str1, str2)
  str1_copy = str1.dup.chars
  str2_copy = str2.dup.chars
  str1.chars.each_with_index do |el, x|

    if str2_copy.include?(el)
      index1 = str1_copy.index(el)
      index2 = str2_copy.index(el)
      str1_copy.delete_at(index1)
      str2_copy.delete_at(index2)
    end
  end
  str1_copy.empty? && str2_copy.empty?
end

# Time complexity = n^2

def third_anagram(str1, str2)
  str1.chars.sort == str2.chars.sort
end

# Time complexity = O(nlogn)

def fourth_anagram(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.chars.each{|el| hash1[el] += 1 if str2.include?(el)}
  str2.chars.each{|el| hash2[el] += 1 if str1.include?(el)}

  anagram = true
  hash1.empty? ? anagram = false : anagram = true

  hash1.each do |k,v|
    if hash2[k] != v
       anagram = false
     end
  end
  anagram
end

# Time complexity = n^2
