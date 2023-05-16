class BeatBox
    attr_reader :list

    def initialize
        @list = LinkedList.new
    end

    def append(beats)
        beats.split.each do |beat|
        @list.append(beat)
        end
        beats
    end

end