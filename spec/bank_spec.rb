require "bank"

describe Bank do

  let(:bank){ described_class.new }
  it { is_expected.to respond_to :deposit }

  it "should show 100 when passed 100" do
    expect(bank.deposit(100)).to eq 100
  end

end