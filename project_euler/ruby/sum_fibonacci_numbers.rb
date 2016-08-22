def evenFinbonacciSum(num)
    last_item = 1;
    current_item = 2;
    sum = 0;
    while current_item <= num
        if current_item % 2 == 0
            sum += current_item
        end
        temp = last_item + current_item
        last_item = current_item
        current_item = temp
    end
    return sum
end