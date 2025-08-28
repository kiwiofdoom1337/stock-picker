def stock_picker(array)
  profit_days = Array.new()
  #try to find lowest price and compare against all the next days
  #lowest price can't be on last day
  look_for_lowest = array[0, array.length - 1]
  look_for_highest = array[1, array.length]
end