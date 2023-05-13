class LinkedList
    attr_reader :head
    attr_accessor :head
    def initialize
        @head = nil
    end

    def append(data)
        if @head
            find_tail.next_node = Node.new(data)
        else
            @head = Node.new(data)
        end
        data
    end

    def prepend(data)
        new_node = Node.new(data)
        new_node.next_node = @head
        @head = new_node
        data
    end

    def find_tail
        node = @head
        if node != node.next_node
            return node
        elsif node != node.next_node 
            while (node = node.next_node)
                return node
            end
        end
    end

    def count
        counter = 0
        current_node = @head
        until current_node.nil?
            current_node = current_node.next_node
            counter += 1
        end
        counter
    end

    def to_string
        beats = []
        current_node = @head
        until current_node.nil?
            beats << current_node.data
            current_node = current_node.next_node
        end
        beats.join(" ")
    end

   
end

