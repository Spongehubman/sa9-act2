require 'string_wrapping'

RSpec.describe StringWrapper do

    let(:an_example) { StringWrapper.new("sub") }

    describe "#reverse" do
        it "reverses the string" do
            expect(an_example.reverse).to eql("bus")
        end
    end

    describe "#upccase" do
        it "converts the string to uppercase" do
            expect(an_example.upcase).to eql("SUB")
        end
    end

    describe "#downcase" do
        it "converts the string to lowercase" do
            an_example.upcase
            expect(an_example.downcase).to eql("sub")
        end
    end
end