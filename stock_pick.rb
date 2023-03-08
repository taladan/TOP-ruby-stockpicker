# stock_pick.rb

stocks = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stocks2 = [534, 4, 8, 1, 254, 82, 365]

def stock_picker(stocks)
  sorted_stocks = stocks.sort.uniq
  lows = sorted_stocks.slice(0..sorted_stocks.length / 2)
  # Don't want to deal with an array in reverse
  highs = sorted_stocks.slice(sorted_stocks.length / 2..-1).reverse

  current_max = 0
  highs.each do |high|
    lows.each do |low|
      high_index = stocks.find_index(high)
      low_index = stocks.find_index(low)
      if high - low > current_max && high_index > low_index
        current_max = high - low
        current_high = high
        current_low = low
        p [stocks.find_index(current_low), stocks.find_index(current_high)]
      end
    end
  end
end

stock_picker(stocks)
stock_picker(stocks2)
