# We define a unival tree as a tree where all nodes have the same value
# Write a function that given a tree determine whether or not that tree is unival

def check_unival(node)
  return true unless node
  queue = node.children
  last_value = node.value

  while queue != []
    current_node = queue.shift
    if current_node.value != last_value
      return false
    end
    children_nodes = current_node.children
    if children_nodes
      children_nodes.each do |n|
        queue.push(n)
      end
    end
  end
  return true
end