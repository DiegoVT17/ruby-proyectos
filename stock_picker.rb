stocks = [17,3,6,9,15,8,6,20,1,10,8]

def picker(stocks)
  min_price = stocks.first
  min_day = 0
  best_profit = 0
  best_days = [0,0]
  
  stocks.each_with_index do |price, day|
    if price - min_price > best_profit
      best_profit = price - min_price
      best_days = [min_day, day]
    end

    if price < min_price
      min_price = price
      min_day = day
    end
  end

  best_days
end

p picker(stocks)