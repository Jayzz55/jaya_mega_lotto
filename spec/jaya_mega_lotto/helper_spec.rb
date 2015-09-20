require "spec_helper"
require "jaya_mega_lotto/helper"

class FakeView
  include JayaMegaLotto::Helper
end

describe FakeView do
  describe "#jaya_mega_lotto_drawing" do
    it "delegates to JayaMegaLotto::Drawing#draw" do
      drawing = double("drawing")
      JayaMegaLotto::Drawing.stub(:new).and_return(drawing)
      expect(drawing).to receive(:draw)
      FakeView.new.jaya_mega_lotto_drawing
    end
  end
end
