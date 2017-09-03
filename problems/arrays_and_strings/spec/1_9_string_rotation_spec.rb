require '1_9_string_rotation'

describe "#string_rotation" do
  it "checks for a rotated string of the other" do
    expect(string_rotation("waterbottle", "erbottlewat")).to eq true
  end
end
