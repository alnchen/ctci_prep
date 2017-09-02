require '1_3_URLify'

describe "#URLify" do
  it "returns valid URLs" do
    expect(urlify('player nba')).to eq 'player%20nba'
  end
end
