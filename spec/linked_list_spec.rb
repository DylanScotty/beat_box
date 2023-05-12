require "./lib/linked_list"
require "./lib/node"

RSpec.describe Node do

    it 'has head equal to nil' do
        list = LinkedList.new
        expect(list.head).to eq(nil)
    end

    it 'it can append beats' do
        list = LinkedList.new
        expect(list.append("doop")).to eq("doop")
    end

    it 'will have next node after head to return nil"' do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.next_node).to eq(nil)
    end

    it 'list should count by 1"' do
        list = LinkedList.new
        list.append("doop")
        expect(list.count).to eq(1)
    end

    it 'can return a string of all data' do
        list = LinkedList.new
        list.append("doop")
        expect(list.to_string).to eq("doop")
    end

    it 'can create a new linked list' do
        list = LinkedList.new
        expect(list).to be_a_instance_of(LinkedList)
    end

    


end