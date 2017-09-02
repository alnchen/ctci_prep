require '1_5_one_away'

describe "#one_away" do
  it "returns true for pale and ple" do
    expect(one_away("pale", "ple")).to eq true
  end

  it "returns true for pales and pale" do
    expect(one_away("pales", "pale")).to eq true
  end

  it "returns false for pale and bake" do
    expect(one_away("pale", "bake")).to eq false
  end
end
