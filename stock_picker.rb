def stock_picker(prices)
    #find the maximum difference between two numbers
    #The first number must have a lower index.
    diff = 0
    sorted = prices.sort
    for i in 0..sorted.length-2
        lowInd = prices.index(sorted[i])
        high = prices[lowInd..prices.length].max
        if diff < (high - prices[lowInd])
            diff = high - prices[lowInd]
        end
    end
    return diff
end
stock_picker([17,3,6,9,15,8,6,1,10])