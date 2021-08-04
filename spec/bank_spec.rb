require "bank"
require "Date"

describe Bank do

  let(:bank){ described_class.new }
  it { is_expected.to respond_to :deposit }
  it { is_expected.to respond_to :withdraw }

  context "Deposit" do
    it "should show 100 when passed 100" do
      transaction_date = Date.today.strftime("%d/%m/%Y")
      bank.deposit(100)
      expect(bank.account).to eq({ transaction_date => [100] })
    end

    it "should show 50 when passed 50" do
      transaction_date = Date.today.strftime("%d/%m/%Y")
      bank.deposit(50)
      expect(bank.account).to eq({ transaction_date => [50] })
    end

    it "should show 80 when passed 30 after passing 50" do
      transaction_date = Date.today.strftime("%d/%m/%Y")
      bank.deposit(50)
      bank.deposit(30)
      expect(bank.account).to eq({ transaction_date => [30, 50] })
    end
  end

  context "Withdraw" do
    it "should store the date and minus the transaction" do
        transaction_date = Date.today.strftime("%d/%m/%Y")
        bank.deposit(100)
        bank.withdraw(50)
        expect(bank.account).to eq({ transaction_date => [-50,100] })
    end

    it "should raise an error when money is more than account total" do
      expect{ bank.withdraw(20) }.to raise_error "Insufficient Funds!"
    end
  end
end