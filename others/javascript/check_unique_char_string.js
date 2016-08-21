// Assuming uppercase and lowercase are not the same.
var checkUniqueness = function(str) {
  // Assuming there are only 127 ASCII charactors. If the length of input string is larger than that. The return false.
  if (str.length > 127) {
    return false;
  }

  // CharArr preset to be all 'false'. Once a char is identified in the input str, then turn it to 'true'. As the iteration goes, whenever it hits a 'true', that means the char appeared already.
  var charArr = Array(127).fill('0');
  var strArr = str.split('');
  for (var e in strArr) {
    var index = strArr[e].charCodeAt(0)
    if (charArr[index] === '0') {
      charArr[index] = '1';
    } else {
      return false;
    }
  }
  return true;
};

var str = 'abcjA';

// It is O(n)
console.log(checkUniqueness(str));