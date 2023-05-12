require "./lib/node"

RSpec.describe Node do
 
    it 'has data comes back "plop"' do
        node = Node.new("plop")
        expect(node.data).to eq("plop")
    end
    
    it 'has the next node as nil' do
        node = Node.new("plop")
        expect(node.next_node).to eq(nil)
    end


end