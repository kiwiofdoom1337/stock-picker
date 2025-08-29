def stock_picker(array)
  profit_days = Array.new()
  look_for_buy = array[0, array.length - 1]
  look_for_sell = array[1, array.length]
  profit = 0
  profit_msg = ""
  scan_count = 0
  look_for_buy.each do |buy|
    scan_count += 1
    look_for_sell.each do |sell|
      if sell - buy > profit
        profit = sell - buy
        profit_days[0] = look_for_buy.index(buy)
        profit_days[1] = look_for_sell.index(sell) + scan_count
        profit_msg = "for a profit of $#{sell} - $#{buy} = $#{profit}"
      end
    end
    look_for_sell.shift()
  end
  p profit_days
  puts profit_msg
end

stock_picker([17,3,6,9,15,8,6,1,10])