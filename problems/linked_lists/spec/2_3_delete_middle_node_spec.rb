require '2_3_delete_middle_node'

describe "#remove_dups" do
  before(:each) do
    @list = LinkedList.new(16)
    @list.add(24)
    @third = @list.add(33)
    @list.add(40)
    @list.add(50)
    @list.add(60)
  end

  it "removes a middle node" do
    delete_middle_node(@third)
    expect(@list.results).to eq [16, 24, 40, 50, 60]
  end
end
