def my_collect(array)
  output_array = []
  i = 0
  while i < array.length
    output_array.push(array[i])
    yield output_array[i]
    i += 1
  end
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]
my_collect(array) do |name|
  name.split(" ").first
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end