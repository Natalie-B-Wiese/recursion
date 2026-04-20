def fibs(length)
  arr = Array.new(length)

  (0...length).each do |index|
    arr[index] = if index == 0
                   0
                 elsif index == 1
                   1
                 else
                   arr[index - 2] + arr[index - 1]
                 end
  end

  arr
end

def fibs_rec(length)
  puts 'This was printed recursively'
  arr = Array.new(length)

  if length == 1
    arr[0] = 0
  elsif length == 2
    arr = fibs_rec(1)
    arr[1] = 1
  else
    arr = fibs_rec(length - 1)
    arr[length - 1] = arr[length - 3] + arr[length - 2]
  end

  arr
end

fibs_rec(8)
