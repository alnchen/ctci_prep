require '1_4_palindrome_permutation'

describe "#palindrome_permutation" do
  it "returns true for valid strings" do
    expect(palindrome_permutation?("Tact Coa")).to eq true
  end

  it "returns false for invalid strings" do
    expect(palindrome_permutation?("bad_string")).to eq false
  end
end
