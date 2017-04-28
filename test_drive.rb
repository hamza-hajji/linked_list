require "./linked_list"

puts "Linked List Testing"

puts "Creating new list:"
l = LinkedList.new

puts "List's size:"
puts l.size

puts "Add elements to the end via #append:"
5.upto(10) { |i| l.append i }
puts l
puts "List's size:"
puts l.size

puts "Add elements to the front via #prepend:"
4.downto(1) { |i| l.prepend i }
puts l
puts "List's size:"
puts l.size

puts "Deleting the last node from the list:"
l.pop
puts l

puts "Finding and testing for existence:"
puts "- does it contain 5? #{l.contains? 5}"
puts "- where is the element 5? #{l.find 5}"
puts "- what's the element at index 2: #{(l.at 2).value}"

puts "Display all list elements:"
puts l