class BeatBox
    attr_reader :list

    def initialize
        @list = LinkedList.new
    end

    def append(beats)
        @list.append(beats)
    end
end