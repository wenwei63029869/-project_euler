function wiggleArrangeArray(intArr) {
    var result = [];
    var sortedArr = mergeSort(intArr);
    var r = sortedArr.length - 1;
    var l = 0;
    while (r !== l && r - 1 !== l) {
        result.push(sortedArr[r]);
        result.push(sortedArr[l]);
        r--;
        l++;
    }
    if (r === l) {
      result.push(sortedArr[r]);
    } else {
      result.push(sortedArr[r]);
      result.push(sortedArr[l]);
    }
    return result;
}

function mergeSort(arr) {
  var len = arr.length;
  if (len === 1) {
    return arr;
  }
  var mid = parseInt(len/2);
  var leftHalf = mergeSort(arr.slice(0, mid));
  var rightHalf = mergeSort(arr.slice(mid, len));
  return merge(leftHalf, rightHalf);
}

function merge(arr1, arr2) {
  var resultArr = [];
  while (typeof arr1[0] !== 'undefined' || typeof arr2[0] !== 'undefined') {
    if (typeof arr2[0] === 'undefined' || arr1[0] <= arr2[0]) {
      resultArr.push(arr1.shift());
    } else {
      resultArr.push(arr2.shift());
    }
  }
  return resultArr;
}

function sortNumber(a,b) {
    return a - b;
}

var intArr = [-1, -2, -3, 2, 0, 0, 0, 1, 3, 4, 5, 6]

console.log(wiggleArrangeArray(intArr));
// console.log(mergeSort(intArr));
// if (typeof [][0] !== 'undefined') {
//   console.log('work');
// } else {
//   console.log('not work');
// }
