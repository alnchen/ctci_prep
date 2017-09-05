require '2_2_return_kth_to_last'

describe "#return_kth_to_last" do
  before(:each) do
    @list = LinkedList.new('first')
    @list.add('second')
    @list.add('third')
    @list.add('fourth')
    @list.add('fifth')
    @list.add('sixth')
    @list.add('seventh')
    @list.add('last')
  end

  it "returns the second-to-last value" do
    expect(return_kth_to_last(@list.head, 2)).to eq 'seventh'
  end

  it "returns the second-to-last value" do
    expect(return_kth_to_last(@list.head, 2)).to eq 'seventh'
  end

  it "returns nil if k exceeds list length" do
    expect(return_kth_to_last(@list.head, 9)).to be nil
  end
end
