require "bank"

describe Bank do

  let(:bank){ described_class.new }
  it { is_expected.to respond_to :deposit }

  it "should show 100 when passed 100" do
    expect(bank.deposit(100)).to eq 100
  end

  it "should show 50 when passed 50" do
    expect(bank.deposit(50)).to eq 50
  end
  
end