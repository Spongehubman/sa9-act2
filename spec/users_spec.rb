require 'users'

RSpec.describe User do
    let(:user) { User.new("EngineerElephant") }

    before do
        # Setting a variable for later use.
        given_name = user.username
    end

    describe "#log_in" do
        it "logs the user in" do
            user.log_in
            expect(user.logged_in).to be true
        end
    end

    describe "#log_out" do
        it "logs the user out" do
            user.log_in
            user.log_out
            expect(user.logged_in).to be false
        end
    end

    describe "#username" do
        it "returns the correct username" do
            expect(user.username).to equal(given_name)
        end
    end
end