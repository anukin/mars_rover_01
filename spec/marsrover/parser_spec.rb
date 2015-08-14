require 'spec_helper'

module MarsRoverApp
  describe "Parser" do
    context "parse" do
      it "should parse the input based on position and direction" do
        parser = Parser.new("llmr", 1, 2, N)
        vector = {:x_cordinate => 1, :y_cordinate => 1, :direction => E}
        expect(parser.parse).to eq(vector)
      end

      it "should output new position and direction based on current position and direction" do
        parser = Parser.new("llmr", 2, 2, N)
        vector = {:x_cordinate => 2, :y_cordinate => 1, :direction => E}
        expect(parser.parse).to eq(vector)
      end
    end
  end
end
