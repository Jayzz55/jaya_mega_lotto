require 'spec_helper'

module JayaMegaLotto
  describe Array do
    describe "#draw" do
      it "draws a sample element from an array" do
        expect([23,56,345]).to include([23,56,345].draw)
      end
    end
  end

  describe String do
    describe "#mega_lotto" do
      it "appends the string with the word 'Mega Lotto: '" do
        expect("March 27 drawing".mega_lotto).to eq("Mega Lotto: March 27 drawing")
      end
    end
  end
end
