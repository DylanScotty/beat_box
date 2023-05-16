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

    it 'returns list head as nil' do
        bb = BeatBox.new
        expect(bb.list.head).to eq(nil)
    end

    it 'is able to append the list with deep doo ditt' do
        bb = BeatBox.new
        expect(bb.append("deep doo ditt")).to eq("deep doo ditt")
    end


end