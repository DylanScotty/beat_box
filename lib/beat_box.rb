class BeatBox
    attr_reader :list

    def initialize
        @list = LinkedList.new
    end

    def append(data)
        @list.append(data)
    end

    def count
        @list.count
    end

end