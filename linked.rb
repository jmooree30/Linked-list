class Node 
  attr_accessor :data, :next 
  def initialize(data)
    @data = data 
  end 
end 

class LinkedList
  attr_accessor :head, :tail, :size 
  def initialize
    @head = nil 
    @tail = nil 
    @size = 0
  end 

  def empty? 
    @head.nil? && @tail.nil?
  end 

  def append(data)
    node = Node.new(data)
    if empty?
      @head = @tail = node 
      @size += 1
    else @tail.next = node 
      @tail = node
      @size +=1
    end 
  end

  def prepend(data)
    node = Node.new(data)
    if empty?
      @head = @tail = node
      @size +=1
    else node.next = @head 
      @head = node  
      @size +=1
    end 
  end 

  def head
    puts @head.data
  end 

  def tail
   puts @tail.data
  end

  def at(index)
    i = 1
    node = @head
    while i != index 
      node = node.next
      i+=1 
    end
    puts node.data
  end 

  def size 
    puts @size  
  end 

  def pop
    node = @head 
    until node.next == @tail
    node = node.next
    end
    node.next = nil 
    @tail = node
    @size -= 1
  end 

  def contains(data)
    node = @head.data 
    if node == data 
      puts "True"
    else
      node = @head
      while node.next != nil
      node = node.next
        if node.data == data
        puts "True"
        break
        end
      end
    end 
  end 

  def find(data)
    index = 0
    node = @head
    if node.data == data 
      p index
    else
      while node.next != nil 
        node = node.next 
        index +=1
        if node.data == data 
          p index
        end
      end
    end 
  end 

  def to_s 
    str = ""
    node = @head
    str << "(#{node.data}) -> "
    while node.next != nil
    node = node.next
    str << "(#{node.data}) -> "
    end
    str << " nil"
    puts str
  end 

end 
test = LinkedList.new
test.append(111)
test.append(222)
test.prepend(333)
test.prepend(444)
test.head 
test.tail 
test.at(3)
test.size 
#test.pop
test.contains(222)
test.find(333)
test.to_s
_
 


