def bubble_sort(arr)
  sorted_arr = []
  changed = false

  arr.each_with_index do |item, i|
    if arr[i + 1] != nil && item > arr[i + 1]
      changed = true
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      sorted_arr << arr[i]
    else
      sorted_arr << item
    end
  end

  if changed
    bubble_sort(sorted_arr)
  else
    puts sorted_arr.inspect
  end
end


list = [4,2,18,7,3,10,25,1,5]
another_list = [4,3,78,2,0,2]
words = ["hi","hello","hey"]

bubble_sort(words)


def bubble_sort_by(arr)
  sorted_arr = []
  changed = false

  arr.each_with_index do |item, i|
    if arr[i + 1] != nil && item.length > arr[i + 1].length
      changed = true
      num = yield(item, arr[i + 1])
      if num <= 0
        sorted_arr << item
      else
        sorted_arr << arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
      end
    else
      sorted_arr << item
    end
  end

  if changed
    bubble_sort_by(sorted_arr) { |left,right| left.length - right.length }
  else
    puts sorted_arr.inspect
  end
end

bubble_sort_by(["hilarious","hippopotamus","hi","hello","hey"]) { |left,right| left.length - right.length }
