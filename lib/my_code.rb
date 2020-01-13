# Your Code Here
def map(array)
  new_arr = []
  array.length.times do |index|
    new_arr.push(yield array[index])
  end
  new_arr
end
#expect(map([1, 2, 3, -9]){|n| n * -1}).to eq([-1, -2, -3, 9])

def reduce(array, sp = nil)
  if sp
    sum = sp
    i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length
    sum = yield(sum, array[i])
    i += 1
  end
  sum
end
# source_array = [ false, nil, nil, nil, true]
# expect(reduce(source_array){|memo, n| memo || n}).to eq(true)