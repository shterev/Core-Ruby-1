
def histogram(string)
  hash = {}
  string.each_char { |s| hash[s] = hash.key?(s) ? hash[s] + 1 : 1 }
  hash
end

def prime?(n)
  (1..n - 1).each { |i| return false if i % n == 0 }
  true
end

def ordinal(n)
  case n = n.to_s
  when n.end_with?('1')  then "#{n}st"
  when n.end_with?('11') then "#{n}th"
  when n.end_with?('2')  then "#{n}nd"
  when n.end_with?('3')  then "#{n}rd"
  else "#{n}th"
  end
end

def palindrome?(object)
  true if object.to_s == object.to_s.reverse
end

def anagram?(word, other)
  return false if word.length != other.length

  word.each_char do |s|
    return false unless other.include? s
  end

  true
end

def remove_prefix(string, prefix)
  string.split(prefix).last
end

def remove_suffix(string, suffix)
  string.split(suffix).first
end

def digits(n)
  array = []

  n.to_s.each_char do |s|
    array << s.to_i
  end

  array
end

def fizzbuzz(range)
  array = []

  range.each do |i|
    case
    when i % 3 == 0 && i % 5 == 0 then array << :fizz_buzz
    when i % 3 == 0 then array << :fizz
    when i % 5 == 0 then array << :buzz
    else array << i
    end
  end

  array
end

def count(array)
  hash = {}
  array.each { |a| hash[a] = hash.key?(a) ? hash[a] + 1 : 1 }
  hash
end

def count_words(*sentences)
  hash   = {}
  string = ''

  sentences.each { |a| string += a }

  string = string.downcase.gsub(/[,.]/, ' ').split(' ')

  string.each { |s| hash[s] = hash.key?(s) ? hash[s] + 1 : 1 }

  hash
end
