require 'bank_account'

RSpec.describe BankAccount do

    let(:example) { BankAccount.new() }

    describe "#deposit" do
        it "increases the balance by the deposit amount" do
            expect(example.deposit(5000)).to eq(5000)
        end
    end

end