require '1_7_rotate_matrix'

describe "#rotate_matrix" do
  it "rotates a square matrix" do
    expect(rotate_matrix([[1, 2, 3], [4, 5, 6], [7, 8, 9]])).to eq [[7, 4, 1], [8, 5, 2], [9, 6, 3]]
  end
end
