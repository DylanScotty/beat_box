class LinkedList
    attr_reader :head
    attr_accessor :head
    def initialize
        @head = nil
    end

    def append(data)
        new_node = Node.new(data)
        if @head.nil?
            @head = new_node
        else
            current_node = @head
            until current_node.next_node.nil?
            end
            current_node.next_node = new_node
        end
        data
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

