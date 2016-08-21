var findMatchElement = function(node, classname) {
  var result = []
  var childElements = node.childNodes;
  if (node.classList && node.classList.contains(classname)){
    result.push(node);
  };
  if (childElements) {
    for (var i = 0; i < childElements.length; i++) {
      var newNode = childElements[i]
      if (newNode.classList && newNode.classList.contains(classname)) {
          result.push(newNode);
      };
      result = result.concat(findMatchElement(newNode));
    };
  };
  return result;
};

var getElementByClassname = function(classname) {
  var result = [];
  var node = document.body;
  result = result.concat(findMatchElement(node, classname));
  console.log(result[0]);
};