def stock_picker(array)
  profit_days = Array.new()
  profit = 0
  profit_msg = ""

  array.each_with_index do |buy, buy_day|
    array.each_with_index do |sell, sell_day|
      if sell - buy > profit && sell_day > buy_day
        profit = sell - buy
        profit_days = [buy_day, sell_day]
        profit_msg = "for a profit of $#{sell} - $#{buy} = $#{profit}"
      end
    end
  end

  p profit_days
  puts profit_msg
end

stock_picker([17,3,6,9,15,8,6,1,10])