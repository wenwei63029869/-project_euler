var findMatchElement = function(node, className) {
  var result = [];
  var childElements = node.childNodes;
  if (node.classList && node.classList.contains(className)){
    result.push(node);
  }
  if (childElements) {
    for (var i = 0; i < childElements.length; i++) {
      var newNode = childElements[i];
      result = result.concat(findMatchElement(newNode, className));
    }
  }
  return result;
};

var getElementByClassname = function(className) {
  var result = [];
  var node = document.body;
  result = result.concat(findMatchElement(node, className));
  return result;
};