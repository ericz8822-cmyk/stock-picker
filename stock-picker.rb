def stock_picker (arr)
  possible = Hash.new(0)
  arr.each_with_index do |num, i|
    dif = arr[i, arr.length].max - num
    possible[dif] = [i, arr.index(arr[i, arr.length].max)]
  end
  possible[possible.keys.max]
end