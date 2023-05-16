require "./lib/node"

RSpec.describe Node do
    it 'is an instance of Node' do
        node = Node.new
        expect(Node.new).to be_a_instance_of(Node)
    end

    it 'has data comes back "plop"' do
        node = Node.new("plop")
        expect(node.data).to eq("plop")
    end
    
    it 'has the next node as nil' do
        node = Node.new("plop")
        expect(node.next_node).to eq(nil)
    end

end