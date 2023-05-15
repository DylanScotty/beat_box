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

    def insert(position, data)
        if position <= 0
            prepend(data)
        elsif position >= count
            append(data)
        else
            new_node = Node.new(data)
            current_node = @head
            (position - 1).times do
                current_node = current_node.next_node
            end
            new_node.next_node = current_node.next_node
            current_node.next_node = new_node
        end
        data
    end

    def includes?(beat)
        current_node = @head
        while current_node
            return true if current_node.data == beat
            current_node = current_node.next_node
        end
        false
    end

    def pop
        if @head.nil?
            nil
        elsif @head.next_node.nil?
            popped_data = @head.data
            @head = nil
            popped.data
        else
            previous_node = nil
            current_node = @head
            while current_node.next_node
                previous_node = current_node
                current_node = current_node.next_node
            end
            popped_data = current_node.data
            previous_node.next_node = nil
            popped_data
        end
    end

    def find(start, count)
        current_node = @head
        index = 0
        while current_node && index < start
            current_node = current_node.next_node
            index += 1
        end
        
        beats =[]
        while current_node && beats.length < count
            beats << current_node.data
            current_node = current_node.next_node
        end

        beats.join(" ")
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

