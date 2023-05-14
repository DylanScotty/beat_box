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

    it 'has a starting value of nil in linked list' do
        list = LinkedList.new
        expect(list.head).to eq(nil)
    end

    it 'it can append beats to add doop' do
        list = LinkedList.new
        list.append("doop")
        expect(list.append("doop")).to eq("doop")
    end

    it 'appended list will be an instance of the list' do
        list = LinkedList.new
        list.append("doop")
        expect(list).to be_a_instance_of(LinkedList)
    end

    it "returns the head node" do
        list = LinkedList.new
        list.append("doop")
        expect(list.head).to be_a(Node)
        expect(list.head.data).to eq("doop")
        expect(list.head.next_node).to eq nil
    end

    it "returns the head node with next_node as nill" do
        list = LinkedList.new
        list.append("doop")
        expect(list.head.next_node).to be nil
    end
    
    it 'appends a node with "deep"' do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        expect(list.head.next_node.data).to eq("deep")
    end

    it "returns the count of nodes in the list" do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        expect(list.count).to eq(2)
    end

    it 'returns a string with the list of notes' do
        list = LinkedList.new
        list.append("doop")
        list.append("deep")
        expect(list.to_string).to eq("doop deep")
    end

    it 'appends a node with the data "plop"' do 
        list = LinkedList.new
        list.append("plop")
        expect(list.append("plop")).to eq("plop")
    end

    it 'can return a string with "plop"' do
        list = LinkedList.new
        list.append("plop")
        expect(list.to_string).to eq("plop")
    end

    it 'appends a node with the data "suu"' do 
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        expect(list.append("suu")).to eq("suu")
    end

    it 'prepends a node with the data "dop"' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        expect(list.prepend("dop")).to eq("dop")
    end

    it 'returns a string with "dop plop suu"' do 
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.to_string).to eq("dop plop suu")
    end

    it 'returns a count of 3 when dop is added' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.count).to eq(3)
    end

    it 'uses a insert method to add in a data point' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.insert(1, "woo")).to eq("woo")
    end

    it 'returns a string with dop woo plop suu' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")
        expect(list.to_string).to eq("dop woo plop suu")
    end

    it 'returns a string with dop woo plop suu' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")
        expect(list.to_string).to eq("dop woo plop suu")
    end

    it 'returns a string with "deep woo shi shu blop' do
        list = LinkedList.new
        list.append("shi")
        list.append("blop")
        list.prepend("deep")
        list.insert(1, "woo")
        list.insert(3, "shu")
        expect(list.to_string).to eq("deep woo shi shu blop")
    end

    it 'finds a data point and returns the values' do
        list = LinkedList.new
        list.append("shi")
        list.append("blop")
        list.prepend("deep")
        list.insert(1, "woo")
        list.insert(3, "shu")
        expect(list.find(2, 1)).to eq("shi")
    end

    it 'finds multipule data point and returns the values' do
        list = LinkedList.new
        list.append("shi")
        list.append("blop")
        list.prepend("deep")
        list.insert(1, "woo")
        list.insert(3, "shu")
        expect(list.find(1, 3)).to eq("woo shi shu")
    end

    it 'can determine if a beat is in the list' do
        list = LinkedList.new
        list.append("shi")
        list.append("blop")
        list.prepend("deep")
        list.insert(1, "woo")
        list.insert(3, "shu")
        expect(list.includes?("deep")).to true
    end
end