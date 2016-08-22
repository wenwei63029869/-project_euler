var findPossiblePath = function(startX, startY, x, y) {
  var result = 0;

  if (startX === x && startY === y) {
    return 1;
  }

  if (startX < x) {
    result += findPossiblePath(startX + 1, startY, x, y);
  }

  if (startY < y) {
    result += findPossiblePath(startX, startY + 1, x, y);
  }

  return result;
}

console.log(findPossiblePath(0, 0, 10, 10));