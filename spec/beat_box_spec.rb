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
        expect(bb.list).to be_an_instance_of(LinkedList)
    end

    it 'returns list head as nil' do
        bb = BeatBox.new
        expect(bb.list.head).to eq(nil)
    end

    it 'is able to append the list with deep doo ditt' do
        bb = BeatBox.new
        expect(bb.append("deep doo ditt")).to eq("deep doo ditt")
    end

    it 'returns with head node with the data being deep' do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        expect(bb.list.head.data).to eq("deep")
    end

    it 'retuns the next node after head with doo' do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        expect(bb.list.head.next_node.data).to eq("doo")
    end

    it 'can append the list with woo hoo shu' do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        expect(bb.append("woo hoo shu")).to eq("woo hoo shu")
    end

    it 'can count the number of beats' do
        bb = BeatBox.new
        bb.append("deep doo ditt")
        bb.append("woo hoo shu")
        expect(bb.count).to eq(6)
    end





end