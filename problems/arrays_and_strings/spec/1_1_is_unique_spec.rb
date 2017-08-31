require '1_1_is_unique'

describe "#is_unique?" do
  it "passes a simple test" do
    expect(is_unique?("aba")).to be false
  end

  it "returns true for empty strings" do
    expect(is_unique?("")).to be true
  end

  it "returns true for unique strings" do
    expect(is_unique?("abcdefghijklmnopqrstuvwxyz")).to be true
  end
end
