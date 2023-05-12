require "./lib/linked_list"
require "./lib/node"

RSpec.describe Node do

    it 'has data comes back "plop"' do
        list = LinkedList.new
        expect(list.head).to eq(nil)
    end




end