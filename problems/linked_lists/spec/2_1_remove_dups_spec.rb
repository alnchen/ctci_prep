require '2_1_remove_dups'

describe "#remove_dups" do
  before(:each) do
    @list = LinkedList.new(16)
    @list.add(24)
    @list.add(33)
  end

  it "removes duplicates" do
    @list.add(16)
    remove_dups(@list)
    expect(@list.results).to_not eq [16, 24, 33, 16]
  end

  it "removes duplicates" do
    @list.add(16)
    remove_dups(@list)
    expect(@list.results).to eq [16, 24, 33]
  end
end
