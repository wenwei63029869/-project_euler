// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

// Find the sum of all the multiples of 3 or 5 below 1000.

var findSum = function(num) {
  var sum = 0;
  for (var i = 3; i < num; i++) {
    console.log(i);
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }
  return sum;
}

// This optimized algorithm can handle large number and is faster through only calculating necessary cases.
// Adding up all the number with multiplier of 3 will be 3+6+9+...+999 => 3(1+2+3+...+333) => 3*(1+333)/2. The same goes to 5. However, we need to minus the numbers with multiplier of 15 which are doubled counted.
var findSumOptimized = function(num) {
  return sum_of_factor_n_of_k(num, 3) + sum_of_factor_n_of_k(num, 5) - sum_of_factor_n_of_k(num, 15)
}

var sum_of_factor_n_of_k = function(k, n) {
  var max = Math.floor((k - 1) / n);
  return n * (((1 + max) * max) / 2)
}

console.log(findSumOptimized(1000));

