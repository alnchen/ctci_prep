require '1_2_check_permutation'

describe "#is_permutation?" do
  it "returns true for bat and tab" do
    expect(is_permutation?("bat", "tab")).to eq true
  end

  it "returns false for kobe and lebron" do
    expect(is_permutation?("kobe", "lebron")).to eq false
  end

  it "returns true for desserts and stressed" do
    expect(is_permutation?("desserts", "stressed")).to eq true
  end
end
