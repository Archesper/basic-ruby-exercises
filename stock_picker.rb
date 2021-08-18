def stock_picker(array)
    # A hash to keep track of all possible buy and sell day combinations and the respective buying and selling prices
    buy_and_sell_combinations = {} 
    # A nested loop to add all combinations
    array.each_with_index do |buy_price, buy_day|
        # Start looping from buy_day as buying must happen before selling
        array[buy_day..-1].each_with_index do |sell_price, sell_day|
            # sell_day variable is offset by buy_day as even if the array is sliced from buy_day the indexing starts again from 0
            buy_and_sell_combinations[[buy_day, sell_day + buy_day]] = [buy_price, sell_price]
        end
    end
    # Create a new hash mapping every buy-and-sell combination to its profit value
    possible_profits = buy_and_sell_combinations.map {|days, prices| prices = [days, prices[1]- prices[0]]}.to_h
    # Find highest_profit
    highest_possible_profit = possible_profits.values.max
    # Return key / buy-and-sell combination that results in the highest profit 
    return possible_profits.key highest_possible_profit
end

p stock_picker [17,3,6,9,15,8,6,1,10]