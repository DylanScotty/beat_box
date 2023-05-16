require "./lib/beat_box"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe BeatBox do
    it 'is an instance of BeatBox' do
        bb = BeatBox.new
        expect(bb).to be_a_instance_of(BeatBox)
    end

    it 'returns an instance of LinkedList' do
        bb = BeatBox.new
        expect(bb.list).to be_a_instance_of(LinkedList)
    end

end