var evenFinbonacciSum = function evenFinbonacciSum(num) {
    var last_item = 1;
    var current_item = 2;
    var sum = 0;
    while (current_item <= num) {
        if (current_item % 2 === 0) {
            sum += current_item;
        }
        var temp = last_item + current_item;
        last_item = current_item;
        current_item = temp;
    }
    console.log(sum);
}

var num = 10000

evenFinbonacciSum(num);