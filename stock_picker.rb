# Stock Picker 2026 @mistermaxk
# Return a pair of days - best day to buy (low), best day to sell(high)
# You need to buy before you can sell
def stock_picker(prices)
  max = prices[1..-1].max
  max_i = prices.index(max)
  min = prices[0..max_i].min
  
  [prices.index(min), max_i]
end

stock_picker([17,3,6,9,15,8,6,1,10])
# => [1,4]  # for a profit of $15 - $3 == $12
#stock_picker([7, 11, 9, 3, 12, 2, 19, 18, 4, 1])
# => [5, 6]
