require 'spec_helper'

describe JayaMegaLotto do
  describe "#configure" do 
    before :each do
      JayaMegaLotto.configure do |config|
        config.drawing_count = 10
      end
    end

    it "returns an array with 10 elements" do
      draw = JayaMegaLotto::Drawing.new.draw

      expect(draw).to be_a(Array)
      expect(draw.size).to eq(10)
    end
    
    after :each do
      JayaMegaLotto.reset
    end
  end

  describe ".reset" do
    before :each do
      JayaMegaLotto.configuration do |config|
        config.drawing_count = 10
      end
    end

    it "resets the configuration" do
      JayaMegaLotto.reset

      config = JayaMegaLotto.configuration

      expect(config.drawing_count).to eq(6)
    end
  end
end
