var findMagicIndex = function(arr, startP, endP) {
  if (startP > endP || startP < 0 || endP > arr.length) {
    return "don't have a magic index";
  }

  var mid = Math.floor((endP - startP) / 2) + startP;

  if (arr[mid] === mid) {
    return mid;
  } else if (arr[mid] > mid) {
    return findMagicIndex(arr, startP, mid - 1);
  } else if (arr[mid] < mid) {
    return findMagicIndex(arr, mid + 1, endP);
  }

}

var arr = [-40, -20, -1, 1, 2, 3, 5, 7, 9, 12, 13]
console.log(findMagicIndex(arr, 0, arr.length - 1));