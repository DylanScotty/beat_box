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
   
end

