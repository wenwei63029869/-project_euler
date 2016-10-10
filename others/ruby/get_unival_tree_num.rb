# assuming nil root can't have children nodes
def get_unival_tree_num(node)
  return 1 unless node
  children = node.children
  root_value = node.value
  count = 1
  unival = true

  if children
    children.each do |child|
      if unival && child.value != root_value
        unival = false
        count -= 1
      end
      count += get_unival_tree_num(child)
    end
  end

  count
end

class Node
  attr_accessor :value, :children

  def initialize(value)
    @value = value
    @children = []
  end

  def add_child(node)
    children.push(node)
  end
end

# case 1
puts "Populate the tree with the same value"
#   a1
# b1  c1
node1 = Node.new(1)
node2 = Node.new(1)
node3 = Node.new(1)

node1.add_child(node2)
node1.add_child(node3)
puts get_unival_tree_num(node1) == 3

#     a1
#   b1
# c1
node1 = Node.new(1)
node2 = Node.new(1)
node3 = Node.new(1)

node1.add_child(node2)
node2.add_child(node3)
puts get_unival_tree_num(node1) == 3

# case 2
puts "Populate the tree with different values"
#   a1
# b1  c2
node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(1)

node1.add_child(node2)
node1.add_child(node3)
puts get_unival_tree_num(node1) == 2

#     a1
#   b2
# c1
node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(1)

node1.add_child(node2)
node2.add_child(node3)
puts get_unival_tree_num(node1) == 1

#     a1
#   b2
# c2
node1 = Node.new(1)
node2 = Node.new(2)
node3 = Node.new(2)

node1.add_child(node2)
node2.add_child(node3)
puts get_unival_tree_num(node1) == 2

# case 3
puts "When root node has no children"
node1 = Node.new(1)
puts get_unival_tree_num(node1) == 1

# case 4
puts "When root node is nil"
node1 = nil
puts get_unival_tree_num(node1) == 1