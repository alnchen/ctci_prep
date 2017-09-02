require '1_6_string_compression'

describe "#string_compression" do
  it "returns a compressed string if compressed is shorter than original" do
    expect(string_compression("aabcccccaaa")).to eq "a2b1c5a3"
  end

  it "returns the original string if compressed is longer than original" do
    expect(string_compression("abcdef")).to eq "abcdef"
  end
end
