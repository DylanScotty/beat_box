require "./lib/linked_list"
require "./lib/node"

RSpec.describe Node do

    it 'has head equal to nil' do
        list = LinkedList.new
        expect(list.head).to eq(nil)
    end

    it 'will return "doop"' do
        list = LinkedList.new
        expect(list.append("doop")).to eq("doop")
    end

    it 'next node should have nil"' do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.next_node).to eq(nil)
    end





end