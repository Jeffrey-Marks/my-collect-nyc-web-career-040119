def my_collect(array)
  output_array = []
  i = 0
  while i < array.length
    yield output_array.push(array[i])
    i += 1
  end
end

my_collect(collection) do |x|
  
end