require 'spec_helper'

module JayaMegaLotto
  describe Configuration do
    let(:config) { Configuration.new }
    it "default value is 6" do
      expect(config.drawing_count).to eq(6)
      # Configuration.new.drawing_count = 6
    end
  end

  describe "#drawing_count=" do
    let(:config) { Configuration.new }
    it "can set value" do
      config.drawing_count = 7
      expect(config.drawing_count).to eq(7)
    end
  end
end

