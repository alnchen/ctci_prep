require '1_8_zero_matrix'

describe "#zero_matrix" do
  it "changes all columns and rows when a 0 is detected" do
    expect(zero_matrix([[1, 2, 3], [4, 0, 6], [7, 8, 9]])).to eq [[1, 0, 3], [0, 0, 0], [7, 0, 9]]
  end
end
