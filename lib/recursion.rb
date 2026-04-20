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
end
