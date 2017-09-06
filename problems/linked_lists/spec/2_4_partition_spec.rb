require '2_4_partition'

describe "#partition" do
  before(:each) do
    @list = LinkedList.new(3)
    @list.add(5)
    @list.add(8)
    @list.add(5)
    @list.add(10)
    @list.add(2)
    @list.add(1)
  end

  it "splits the values by the partition" do
    split = partition(@list, 5)
    expect(split.results).to eq [3, 2, 1, 5, 8, 5, 10]
  end
end
